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
}
```

## Examples ##

- [Basic usage](https://github.com/cisagov/distributed-subnets-tf-module/tree/develop/examples/basic_usage)

<!-- BEGIN_TF_DOCS -->
## Requirements ##

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| aws | ~> 4.9 |

## Providers ##

| Name | Version |
|------|---------|
| aws | ~> 4.9 |

## Modules ##

No modules.

## Resources ##

| Name | Type |
|------|------|
| [aws_subnet.the_subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_availability_zones.the_azs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| subnet\_cidr\_blocks | A list of the CIDR blocks associated with the individual subnets in the VPC (e.g. ["10.10.0.0/16", "10.11.0.0/16"]).  Note that the CIDR blocks in this list must be contained within the larger CIDR block associated with the VPC, and they must not overlap. | `list(string)` | n/a | yes |
| vpc\_id | The ID of the VPC where the subnets are to be created (e.g. "vpc-0123456789abcdef0"). | `string` | n/a | yes |

## Outputs ##

| Name | Description |
|------|-------------|
| subnets | A map with keys equal to the subnet CIDR blocks and values equal to the subnets. |
<!-- END_TF_DOCS -->

## Notes ##

Running `pre-commit` requires running `terraform init` in every directory that
contains Terraform code. In this repository, these are the main directory and
every directory under `examples/`.

## Contributing ##

We welcome contributions!  Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for
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
