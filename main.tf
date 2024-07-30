
module "rds_cluster" {
  source = "./rds_module"

  region                   = "us-west-2"
  cluster_identifier       = "my-rds-cluster"
  engine                   = "aurora-mysql"
  engine_version           = "5.7.mysql_aurora.2.03.2"
  master_username          = "admin"
  master_password          = "password123"
  database_name            = "mydatabase"
  backup_retention_period  = 7
  preferred_backup_window  = "07:00-09:00"
  db_subnet_group_name     = "my-db-subnet-group"
  subnet_ids               = ["subnet-abc123", "subnet-def456"]
  vpc_security_group_ids   = ["sg-123456"]
  instance_class           = "db.r5.large"
  instance_count           = 2
  storage_encrypted        = true
  kms_key_id               = "arn:aws:kms:us-west-2:123456789012:key/abcdef-1234-5678-9876-abcdef"
  tags                     = {
    Environment = "production"
    Project     = "my-project"
  }
}