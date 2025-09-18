provider "aws" {
  region = "us-east-1"
}

module "example" {
  source = "../../"

  name            = "example"
  role_arn        = "arn:aws:iam::123456789012:role/GlueJobRole"
  script_location = "s3://my-bucket/scripts/glue-job.py"
}

output "id" {
  value = module.example.id
}
