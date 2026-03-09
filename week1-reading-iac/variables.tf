variable "storage_name" {
  description = "Name of the storage account"
  type        = string
}

variable "admin_password" {
  description = "Administrator password"
  type        = string
  default     = "Password123!"
}