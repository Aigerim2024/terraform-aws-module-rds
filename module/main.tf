provider "aws" {
  region = var.region
}

resource "aws_rds_cluster" "this" {
  cluster_identifier      = var.cluster_identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  master_username         = var.master_username
  master_password         = var.master_password
  database_name           = var.database_name
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  db_subnet_group_name    = var.db_subnet_group_name
  vpc_security_group_ids  = var.vpc_security_group_ids
  storage_encrypted       = var.storage_encrypted
  kms_key_id              = var.kms_key_id

  tags = var.tags
}

resource "aws_rds_cluster_instance" "this" {
  count              = var.instance_count
  identifier         = "${var.cluster_identifier}-instance-${count.index + 1}"
  cluster_identifier = aws_rds_cluster.this.id
  instance_class     = var.instance_class
  engine             = var.engine

  tags = var.tags
}

resource "aws_db_subnet_group" "this" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids

  tags = var.tags
}
