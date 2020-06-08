# The availability zones available to the provider being used
data "aws_availability_zones" "the_azs" {
  blacklisted_zone_ids = [
    # There are no modern instance types in use1-az3; AWS has left
    # that zone behind for the most part.  See, for example, here:
    # https://www.reddit.com/r/aws/comments/g5lh7h/t3m5r5_instance_types_in_use1az3/
    "use1-az3",
  ]
  state = "available"
}

locals {
  # The AZs are returned in a random order, or possibly an order
  # dependent on the AZ names.  Furthermore, the AZ names are not the
  # same between different AWS accounts (see
  # https://docs.aws.amazon.com/ram/latest/userguide/working-with-az-ids.html,
  # for example).
  #
  # To support a multi-account setup it makes sense to sort the AZ IDs
  # (which _are_ unique across AWS accounts) to ensure that two
  # different accounts in the same region use an identical list of
  # AZs.
  sorted_az_ids = sort(data.aws_availability_zones.the_azs.zone_ids)
}
