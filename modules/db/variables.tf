variable "subnet_id" {
  description = "The subnet ID"
}

variable "secondary_subnet_id" {
  description = "The secondary subnet ID"
}

variable "db_instance_identifier" {
  description = "The identifier for the DB instance"
  default     = "my-db-instance"  # You can set a default value or pass it through Terraform commands
}
