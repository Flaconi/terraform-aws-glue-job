resource "aws_glue_job" "this" {
  name     = var.name
  role_arn = var.role_arn

  command {
    name            = "glueetl"
    script_location = var.script_location
    python_version  = "3"
  }

  execution_property {
    max_concurrent_runs = var.max_concurrent_runs
  }

  default_arguments = {
    "--custom-logGroup-prefix" = local.log_group_name
    "--job-bookmark-option"    = "job-bookmark-enable"
    "--enable-metrics"         = "true"
    "--enable-job-insights"    = "true"
    "--job-language"           = "python"
  }

  number_of_workers      = 10
  worker_type            = "G.1X"
  glue_version           = "5.0"
  timeout                = 2880
  security_configuration = var.security_configuration

  tags = var.tags
}
