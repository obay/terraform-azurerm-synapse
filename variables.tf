variable "tenant_id" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "sql_administrator_login" {
  description = "The login of the SQL administrator"
  type        = string
  default     = "sqladminuser"
}

variable "sql_administrator_login_password" {
  description = "The password of the SQL administrator"
  type        = string
}

variable "MyPublicIP" {
  description = "The public IP address of the user"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space of the virtual network"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "The address prefixes of the subnet"
  type        = string
}
