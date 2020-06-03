# The availability zones available to the provider being used
data "aws_availability_zones" "the_azs" {
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
