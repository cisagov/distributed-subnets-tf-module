# ------------------------------------------------------------------------------
# Create the VPC subnets, which are distributed across availability
# zones
# ------------------------------------------------------------------------------

resource "aws_subnet" "the_subnets" {
  count = length(var.subnet_cidr_blocks)

  # We use element(x, i) instead of x[i] because, when i > length(x),
  # then element() returns x[i % length(x)].  This is precisely the
  # behavior we want.
  availability_zone_id = element(data.aws_availability_zones.the_azs.zone_ids, count.index)
  cidr_block           = var.subnet_cidr_blocks[count.index]
  vpc_id               = aws_vpc.the_vpc
  tags                 = var.tags
}
