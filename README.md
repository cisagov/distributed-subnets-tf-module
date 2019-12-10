# vpc-with-distributed-subnets-tf-module #

[![GitHub Build
Status](https://github.com/cisagov/vpc-with-distributed-subnets-tf-module/workflows/build/badge.svg)](https://github.com/cisagov/vpc-with-distributed-subnets-tf-module/actions)

A Terraform module that creates a VPC with one or more subnets.  The
subnets are automatically distributed across the availability zones in
the region where the VPC is being deployed.

## Usage ##

```hcl
module "vpc" {
  source = "github.com/cisagov/vpc-with-distributed-subnets-tf-module"

  cidr_block            = "10.10.0.0/16"
  subnet_cidr_blocks = [
    "10.10.1.0/24",
    "10.10.2.0/24",
  ]
  tags = {
    Key1 = "Value1"
    Key2 = "Value2"
  }
}
```

## Examples ##

* [Deploying into the default VPC](https://github.com/cisagov/vpc-with-distributed-subnets-tf-module/tree/develop/examples/default_vpc)

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-------:|:--------:|
| cidr_block | The CIDR block associated with the VPC (e.g. "10.10.0.0/16") | string | | yes |
| subnet_cidr_blocks | A list of the CIDR blocks associated with the individual subnets in the VPC (e.g. ["10.10.0.0/16", "10.11.0.0/16""]).  Note that the CIDR blocks in this list must be contained within the larger CIDR block associated with the VPC, and they must not overlap. | list(string) | | yes |
| tags | Tags to apply to all AWS resources created | map(string) | `{}` | no |

## Outputs ##

| Name | Description |
|------|-------------|
| vpc_id | The VPC ID |
| subnet_ids | The subnet IDs |

## Contributing ##

We welcome contributions!  Please see [here](CONTRIBUTING.md) for
details.

## License ##

This project is in the worldwide [public domain](LICENSE).

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
