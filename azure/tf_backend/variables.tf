# variable "resource_group_name" {
#   description = "Name for the Azure Resource Group"
#   type        = string

#   validation {
#     condition = (
#       can(regex("^[a-zA-Z0-9\\-_\\(\\)]{1,89}[a-zA-Z0-9\\-_\\(\\)]$", var.resource_group_name)) &&
#       !can(regex("\\.$", var.resource_group_name))
#     )
#     error_message = "The resource_group_name must be 1-90 characters, can contain underscores, hyphens, periods, parentheses, and letters or digits. It can't end with a period."
#   }
# }

# variable "storage_account_name" {
#   description = "Name for the Azure Storage Account"
#   type        = string

#   validation {
#     condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
#     error_message = "The storage_account_name must be 3-24 characters and can contain lowercase letters and numbers."
#   }
# }

# variable "container_name" {
#   description = "Name for the Azure Blob Container"
#   type        = string

#   validation {
#     condition = (
#       can(regex("^[a-z0-9][a-z0-9-]{1,61}[a-z0-9]$", var.container_name)) &&
#       !can(regex("--", var.container_name))
#     )
#     error_message = "The container_name must be 3-63 characters, can contain lowercase letters, numbers, and hyphens. It must start and end with a lowercase letter or number and can't use consecutive hyphens."
#   }
# }

variable "owner" {
  description = "Name of the owner of the workload and resources"
  type        = string
  default     = "OPRE"
}

variable "project" {
  description = "Project name that resources fall under"
  type        = string
  default     = "ops"
}

variable "environment" {
  description = "Environment tag for the resources"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure location for the resources"
  type        = string
  default     = "eastus"
}