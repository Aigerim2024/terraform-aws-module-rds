output "rds_cluster_id" {
  description = "The ID of the RDS cluster"
  value       = aws_rds_cluster.this.id
}

output "rds_cluster_endpoint" {
  description = "The endpoint of the RDS cluster"
  value       = aws_rds_cluster.this.endpoint
}

output "rds_cluster_reader_endpoint" {
  description = "The reader endpoint of the RDS cluster"
  value       = aws_rds_cluster.this.reader_endpoint
}

output "rds_instance_ids" {
  description = "The IDs of the RDS instances"
  value       = [for instance in aws_rds_cluster_instance.this : instance.id]
}
