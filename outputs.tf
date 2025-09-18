output "id" {
  description = "The ID of the Glue job."
  value       = aws_glue_job.this.id
}

output "name" {
  description = "The name of the Glue job."
  value       = aws_glue_job.this.name
}

output "log_group_name" {
  description = "Name of the CloudWatch Log Group for the Glue job"
  value       = local.log_group_name
}
