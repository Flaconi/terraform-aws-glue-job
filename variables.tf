variable "glue_job_name" {
  description = "The name of the Glue job."
  type        = string
}

variable "glue_job_role_arn" {
  description = "The ARN of the IAM role for the Glue job."
  type        = string
}

variable "script_location" {
  description = "The S3 location of the Glue job script."
  type        = string
}

variable "glue_job_max_concurrent_runs" {
  description = "The maximum number of concurrent runs for the Glue job."
  type        = number
}

variable "security_configuration" {
  description = "The security configuration for the Glue job."
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to apply to the Glue job."
  type        = map(string)
  default     = {}
}
