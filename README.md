# Terraform AWS Glue Job Module

This module creates an AWS Glue job using Terraform.

[![lint](https://github.com/flaconi/terraform-cloudflare-worker/workflows/lint/badge.svg)](https://github.com/flaconi/terraform-cloudflare-worker/actions?query=workflow%3Alint)
[![test](https://github.com/flaconi/terraform-cloudflare-worker/workflows/test/badge.svg)](https://github.com/flaconi/terraform-cloudflare-worker/actions?query=workflow%3Atest)
[![Tag](https://img.shields.io/github/tag/flaconi/terraform-cloudflare-worker.svg)](https://github.com/flaconi/terraform-cloudflare-worker/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Usage

```hcl
module "glue_job" {
  source = "./path/to/this/module"

  name                   = "example-glue-job"
  role_arn               = "arn:aws:iam::123456789012:role/GlueJobRole"
  script_location        = "s3://my-bucket/scripts/glue-job.py"
  max_concurrent_runs    = 1
  security_configuration = "my-security-configuration"
  tags = {
    Environment = "dev"
    Project     = "example"
  }
}
```

<!-- TFDOCS_HEADER_START -->


<!-- TFDOCS_HEADER_END -->

<!-- TFDOCS_PROVIDER_START -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 6.12 |

<!-- TFDOCS_PROVIDER_END -->

<!-- TFDOCS_REQUIREMENTS_START -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.12 |

<!-- TFDOCS_REQUIREMENTS_END -->

<!-- TFDOCS_INPUTS_START -->
## Required Inputs

The following input variables are required:

### <a name="input_name"></a> [name](#input\_name)

Description: The name of the Glue job.

Type: `string`

### <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn)

Description: The ARN of the IAM role for the Glue job.

Type: `string`

### <a name="input_script_location"></a> [script\_location](#input\_script\_location)

Description: The S3 location of the Glue job script.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_number_of_workers"></a> [number\_of\_workers](#input\_number\_of\_workers)

Description: The number of workers of a defined workerType that are allocated when a job runs.

Type: `number`

Default: `1`

### <a name="input_worker_type"></a> [worker\_type](#input\_worker\_type)

Description: The type of predefined worker that is allocated when a job runs.

Type: `string`

Default: `"G.1X"`

### <a name="input_max_concurrent_runs"></a> [max\_concurrent\_runs](#input\_max\_concurrent\_runs)

Description: The maximum number of concurrent runs for the Glue job.

Type: `number`

Default: `1`

### <a name="input_security_configuration"></a> [security\_configuration](#input\_security\_configuration)

Description: The security configuration for the Glue job.

Type: `string`

Default: `null`

### <a name="input_tags"></a> [tags](#input\_tags)

Description: Tags to apply to the Glue job.

Type: `map(string)`

Default: `{}`

<!-- TFDOCS_INPUTS_END -->

<!-- TFDOCS_OUTPUTS_START -->
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Glue job. |
| <a name="output_log_group_name"></a> [log\_group\_name](#output\_log\_group\_name) | Name of the CloudWatch Log Group for the Glue job |
| <a name="output_name"></a> [name](#output\_name) | The name of the Glue job. |

<!-- TFDOCS_OUTPUTS_END -->

## License

**[MIT License](LICENSE)**

Copyright (c) 2025 **[Flaconi GmbH](https://github.com/flaconi)**
