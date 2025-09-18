output "glue_job_id" {
  description = "The ID of the Glue job."
  value       = aws_glue_job.this.id
}

output "glue_job_name" {
  description = "The name of the Glue job."
  value       = aws_glue_job.this.name
}

output "cloudwatch_log_group_name" {
  description = "Name of the CloudWatch Log Group for the Glue job"
  value       = local.log_group_name
}
