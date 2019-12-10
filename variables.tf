# ------------------------------------------------------------------------------
# Required parameters
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "cidr_block" {
  description = "The CIDR block associated with the VPC (e.g. \"10.10.0.0/16\")"
}

variable "subnet_cidr_blocks" {
  type        = list(string)
  description = "A list of the CIDR blocks associated with the individual subnets in the VPC (e.g. [\"10.10.0.0/16\", \"10.11.0.0/16\"]).  Note that the CIDR blocks in this list must be contained within the larger CIDR block associated with the VPC, and they must not overlap."
}

# ------------------------------------------------------------------------------
# Optional parameters
#
# These parameters have reasonable defaults, or their requirement is
# dependent on the values of the other parameters.
# ------------------------------------------------------------------------------

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all AWS resources created"
  default     = {}
}
