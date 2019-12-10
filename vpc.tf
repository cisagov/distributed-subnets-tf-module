# ------------------------------------------------------------------------------
# Create the VPC
# ------------------------------------------------------------------------------

resource "aws_vpc" "the_vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  tags                 = var.tags
}
