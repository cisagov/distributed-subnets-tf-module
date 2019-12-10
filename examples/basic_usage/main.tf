provider "aws" {
  region = "us-west-1"
}

#-------------------------------------------------------------------------------
# Configure the module.
#-------------------------------------------------------------------------------
module "vpc" {
  source = "../../"

  cidr_block = "10.23.0.0/16"
  # There are only two AZs in us-west-1, so there will be two subnets
  # in one AZ and one on its own
  subnet_cidr_blocks = [
    for num in range(3) :
    cidrsubnet("10.23.0.0/16", 8, num)
  ]
}
