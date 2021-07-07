# Basic Usage of the Distributed-Subnets Terraform Module #

## Usage ##

To run this example you need to execute the `terraform init` command
followed by the `terraform apply` command.

Note that this example may create resources which cost money. Run
`terraform destroy` when you no longer need these resources.

## Requirements ##

No requirements.

## Providers ##

| Name | Version |
|------|---------|
| aws | n/a |

## Modules ##

| Name | Source | Version |
|------|--------|---------|
| private\_subnets | ../../ |  |
| public\_subnets | ../../ |  |

## Resources ##

| Name | Type |
|------|------|
| [aws_vpc.the_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs ##

No inputs.

## Outputs ##

| Name | Description |
|------|-------------|
| private\_subnets | The private subnets. |
| public\_subnets | The public subnets. |
| vpc | The VPC. |
