variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "cluster_identifier" {
  description = "The identifier for the RDS cluster"
  type        = string
}

variable "engine" {
  description = "The database engine to use (e.g., aurora, aurora-mysql, aurora-postgresql)"
  type        = string
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
}

variable "master_username" {
  description = "The master username for the RDS cluster"
  type        = string
}

variable "master_password" {
  description = "The master password for the RDS cluster"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "The name of the database to create"
  type        = string
}

variable "backup_retention_period" {
  description = "The number of days to retain backups"
  type        = number
}

variable "preferred_backup_window" {
  description = "The preferred backup window"
  type        = string
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the DB subnet group"
  type        = list(string)
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to associate with the RDS cluster"
  type        = list(string)
}

variable "instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "instance_count" {
  description = "The number of RDS instances to create"
  type        = number
}

variable "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted"
  type        = bool
}

variable "kms_key_id" {
  description = "The ARN of the KMS key to use for encryption"
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}
