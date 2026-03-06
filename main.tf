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

  default_arguments = merge(
    {
      "--custom-logGroup-prefix" = local.log_group_name
      "--job-bookmark-option"    = "job-bookmark-enable"
      "--enable-metrics"         = "true"
      "--enable-job-insights"    = "true"
      "--job-language"           = "python"
    },
    length(var.python_library_paths) > 0 ? { "--extra-py-files" = join(",", var.python_library_paths) } : {},
    length(var.additional_python_modules) > 0 ? {
      "--additional-python-modules"       = join(",", var.additional_python_modules)
      "--python-modules-installer-option" = "--no-index"
    } : {}
  )

  number_of_workers      = var.number_of_workers
  worker_type            = var.worker_type
  glue_version           = "5.0"
  timeout                = 2880
  security_configuration = var.security_configuration

  tags = var.tags
}
