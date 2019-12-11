provider "aws" {
  region = "us-west-1"
}

#-------------------------------------------------------------------------------
# Create a VPC.
#-------------------------------------------------------------------------------
resource "aws_vpc" "the_vpc" {
  cidr_block           = "10.23.0.0/16"
  enable_dns_hostnames = true
}

#-------------------------------------------------------------------------------
# Configure the module.
#-------------------------------------------------------------------------------
module "private_subnets" {
  source = "../../"

  vpc_id = aws_vpc.the_vpc.id
  # There are only two AZs in us-west-1, so there will be two subnets
  # in one AZ and one on its own
  subnet_cidr_blocks = [
    for num in range(3) :
    cidrsubnet("10.23.0.0/17", 7, num)
  ]
}

module "public_subnets" {
  source = "../../"

  vpc_id = aws_vpc.the_vpc.id
  # There are only two AZs in us-west-1, so there will be two subnets
  # in one AZ and one on its own
  subnet_cidr_blocks = [
    for num in range(3) :
    cidrsubnet("10.23.128.0/17", 7, num)
  ]
}
