# distributed-subnets-tf-module #

[![GitHub Build
Status](https://github.com/cisagov/distributed-subnets-tf-module/workflows/build/badge.svg)](https://github.com/cisagov/distributed-subnets-tf-module/actions)

A Terraform module that creates one or more subnets inside a VPC.  The
subnets are automatically distributed across the availability zones in
the region where the VPC is deployed.

## Usage ##

```hcl
module "subnets" {
  source = "github.com/cisagov/distributed-subnets-tf-module"

  vpc_id = "vpc-0123456789abcdef0"
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

* [Basic usage](https://github.com/cisagov/distributed-subnets-tf-module/tree/develop/examples/basic_usage)

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-------:|:--------:|
| vpc_id | The ID of the VPC where the subnets are to be created (e.g. "vpc-0123456789abcdef0"). | string | | yes |
| subnet_cidr_blocks | A list of the CIDR blocks associated with the individual subnets in the VPC (e.g. ["10.10.0.0/16", "10.11.0.0/16""]).  Note that the CIDR blocks in this list must be contained within the larger CIDR block associated with the VPC, and they must not overlap. | list(string) | | yes |
| tags | Tags to apply to all AWS resources created. | map(string) | `{}` | no |

## Outputs ##

| Name | Description |
|------|-------------|
| subnets | A map with keys equal to the subnet CIDR blocks and values equal to the subnets. |

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
