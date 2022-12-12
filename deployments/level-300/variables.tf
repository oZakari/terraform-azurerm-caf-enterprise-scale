# Use variables to customize the deployment

variable "root_id" {
  type    = string
  default = "zt"
}

variable "root_name" {
  type    = string
  default = "oZakari"
}

variable "deploy_connectivity_resources" {
  type    = bool
  default = true
}

variable "connectivity_resources_location" {
  type    = string
  default = "canadacentral"
}

variable "connectivity_resources_tags" {
  type = map(string)
  default = {
    demo_type = "deploy_connectivity_resources_custom"
  }
}

variable "deploy_core_landing_zones" {
  type    = bool
  default = false
}

variable "resource_prefix" {
  type        = string
  description = "If specified, will set the resource name prefix for connectivity resources (default value determined from \"var.root_id\")."
  default     = "prefix"

  validation {
    condition     = can(regex("^[a-zA-Z0-9-]{2,10}$", var.resource_prefix)) || var.resource_prefix == ""
    error_message = "Value must be between 2 to 10 characters long, consisting of alphanumeric characters and hyphens."
  }
}

variable "resource_suffix" {
  type        = string
  description = "If specified, will set the resource name suffix for connectivity resources."
  default     = "suffix"

  validation {
    condition     = can(regex("^[a-zA-Z0-9-]{2,36}$", var.resource_suffix)) || var.resource_suffix == ""
    error_message = "Value must be between 2 to 36 characters long, consisting of alphanumeric characters and hyphens."
  }
}
