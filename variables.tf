variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "terraform-azure-demo"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "southcentralus"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "sandbox"
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "VM admin username"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "VM admin password"
  type        = string
  sensitive   = true
  default     = "TerraformDemo@2024!"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "0cfe2870-d256-4119-b0a3-16293ac11bdc"
}
