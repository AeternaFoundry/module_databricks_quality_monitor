resource "databricks_quality_monitor" "quality_monitors" {
  for_each = var.quality_monitors

  assets_dir                 = each.value.assets_dir
  output_schema_name         = each.value.output_schema_name
  table_name                 = each.value.table_name
  baseline_table_name        = each.value.baseline_table_name
  latest_monitor_failure_msg = each.value.latest_monitor_failure_msg
  skip_builtin_dashboard     = each.value.skip_builtin_dashboard
  slicing_exprs              = each.value.slicing_exprs
  warehouse_id               = each.value.warehouse_id

  dynamic "custom_metrics" {
    for_each = each.value.custom_metrics != null ? each.value.custom_metrics : []
    content {
      definition       = custom_metrics.value.definition
      input_columns    = custom_metrics.value.input_columns
      name             = custom_metrics.value.name
      output_data_type = custom_metrics.value.output_data_type
      type             = custom_metrics.value.type
    }
  }

  dynamic "data_classification_config" {
    for_each = each.value.data_classification_config != null ? each.value.data_classification_config : []
    content {
      enabled = data_classification_config.value.enabled
    }
  }

  dynamic "inference_log" {
    for_each = each.value.inference_log != null ? each.value.inference_log : []
    content {
      granularities        = inference_log.value.granularities
      label_col            = inference_log.value.label_col
      model_id_col         = inference_log.value.model_id_col
      prediction_col       = inference_log.value.prediction_col
      prediction_proba_col = inference_log.value.prediction_proba_col
      problem_type         = inference_log.value.problem_type
      timestamp_col        = inference_log.value.timestamp_col
    }
  }

  dynamic "notifications" {
    for_each = each.value.notifications != null ? each.value.notifications : []
    content {
      dynamic "on_failure" {
        for_each = notifications.value.on_failure != null ? notifications.value.on_failure : []
        content {
          email_addresses = on_failure.value.email_addresses
        }
      }
      dynamic "on_new_classification_tag_detected" {
        for_each = notifications.value.on_new_classification_tag_detected != null ? notifications.value.on_new_classification_tag_detected : []
        content {
          email_addresses = on_new_classification_tag_detected.value.email_addresses
        }
      }
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? each.value.provider_config : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "schedule" {
    for_each = each.value.schedule != null ? each.value.schedule : []
    content {
      quartz_cron_expression = schedule.value.quartz_cron_expression
      timezone_id            = schedule.value.timezone_id
    }
  }

  dynamic "snapshot" {
    for_each = each.value.snapshot != null ? each.value.snapshot : []
    content {
    }
  }

  dynamic "time_series" {
    for_each = each.value.time_series != null ? each.value.time_series : []
    content {
      granularities = time_series.value.granularities
      timestamp_col = time_series.value.timestamp_col
    }
  }
}

