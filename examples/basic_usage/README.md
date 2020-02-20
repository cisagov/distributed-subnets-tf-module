# Basic Usage of the Distributed-Subnets Terraform Module #

## Usage ##

To run this example you need to execute the `terraform init` command
followed by the `terraform apply` command.

Note that this example may create resources which cost money. Run
`terraform destroy` when you no longer need these resources.

## Outputs ##

| Name | Description |
|------|-------------|
| vpc | The VPC.  |
| private_subnets | The private subnets. |
| public_subnets | The public subnets. |
