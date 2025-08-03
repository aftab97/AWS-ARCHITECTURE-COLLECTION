# AWS Architecture Collection

A repository of various AWS solutions and architectures implemented using Terraform.

## Getting Started

1. **Install [Terraform](https://developer.hashicorp.com/terraform/downloads)**
2. **Set up AWS credentials** (`aws configure` or via environment variables)
3. **Initialize Terraform**
   ```bash
   terraform init
   ```
4. **Plan and Apply**
   ```bash
   terraform plan
   terraform apply
   ```

## Directory Structure

- `main.tf` — Main Terraform configuration
- `variables.tf` — Input variables
- `outputs.tf` — Outputs
- `.github/workflows/` — CI/CD pipelines for apply & destroy

## Pipelines

- **On merge to `main`**: Automatically applies Terraform (deploys/updates infra)
- **Manual trigger**: Destroy infrastructure using GitHub Actions workflow
