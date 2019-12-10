# The availability zones available to the provider being used
data "aws_availability_zones" "the_azs" {
  state = "available"
}
