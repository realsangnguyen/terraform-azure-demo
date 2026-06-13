# Terraform Azure Demo

Infrastructure as Code pipeline using Terraform and GitHub Actions to automatically provision Azure infrastructure.

## Architecture
## Infrastructure Provisioned

- **Resource Group** — existing PluralSight sandbox resource group
- **Virtual Network** — 10.0.0.0/16
- **Public Subnet** — 10.0.1.0/24
- **Private Subnet** — 10.0.2.0/24
- **Network Security Group** — SSH (22) and HTTP (80) inbound
- **Public IP** — static public IP for VM
- **Network Interface** — connects VM to VNet
- **Linux VM** — Ubuntu 22.04, Apache web server
- **Remote State** — stored in Azure Storage Account

## Pipeline Stages

| Stage | Description |
|---|---|
| Validate | Checks Terraform syntax |
| Plan | Previews infrastructure changes |
| Apply | Creates/updates infrastructure (main branch only) |

## Prerequisites

GitHub Secrets required:
- `ARM_CLIENT_ID`
- `ARM_CLIENT_SECRET`
- `ARM_SUBSCRIPTION_ID`
- `ARM_TENANT_ID`

## Usage

```bash
# Set Azure credentials
export ARM_CLIENT_ID="your-client-id"
export ARM_CLIENT_SECRET="your-client-secret"
export ARM_SUBSCRIPTION_ID="your-subscription-id"
export ARM_TENANT_ID="your-tenant-id"

# Initialize
terraform init

# Preview changes
terraform plan

# Apply changes
terraform apply

# Destroy infrastructure
terraform destroy
```

## Key Concepts Demonstrated

- Infrastructure as Code with Terraform on Azure
- Remote state in Azure Storage Account
- Automated pipeline with GitHub Actions
- Service Principal authentication
- Variables for reusable configuration
- VM custom_data for automated server configuration
- Handling sandbox permission restrictions

## Author

Sang Nguyen — [github.com/realsangnguyen](https://github.com/realsangnguyen)
