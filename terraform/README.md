# Terraform Infrastructure

This directory provisions Phase 2 infrastructure for the project:

- AWS VPC
- Public subnet
- Internet gateway
- Public route table
- Security group
- Ubuntu EC2 instance

## Files

- `versions.tf` provider and Terraform version constraints
- `variables.tf` configurable inputs
- `main.tf` AWS infrastructure resources
- `outputs.tf` useful Terraform outputs
- `terraform.tfvars.example` starter variables

## Usage

1. Install Terraform.
2. Copy `terraform.tfvars.example` to `terraform.tfvars`.
3. Update `key_pair_name` to an existing AWS EC2 key pair in your account.
4. Export AWS credentials or configure an AWS profile.
5. Run:

```bash
terraform init
terraform plan
terraform apply
```
