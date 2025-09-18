variable "name" {
  description = "The name of the Glue job."
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role for the Glue job."
  type        = string
}

variable "script_location" {
  description = "The S3 location of the Glue job script."
  type        = string
}

variable "number_of_workers" {
  description = "The number of workers of a defined workerType that are allocated when a job runs."
  type        = number
  default     = 1
}

variable "worker_type" {
  description = "The type of predefined worker that is allocated when a job runs."
  type        = string
  default     = "G.1X"
}

variable "max_concurrent_runs" {
  description = "The maximum number of concurrent runs for the Glue job."
  type        = number
  default     = 1
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
