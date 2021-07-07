# ------------------------------------------------------------------------------
# Create the VPC subnets, which are distributed across availability
# zones
# ------------------------------------------------------------------------------

resource "aws_subnet" "the_subnets" {
  for_each = toset(var.subnet_cidr_blocks)

  # We use element(x, i) instead of x[i] because, when i > length(x),
  # then element() returns x[i % length(x)].  This is precisely the
  # behavior we want.
  availability_zone_id = element(local.sorted_az_ids, index(var.subnet_cidr_blocks, each.value))
  cidr_block           = each.value
  vpc_id               = var.vpc_id
}
