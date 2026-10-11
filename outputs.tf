output "quality_monitors_id" {
  description = "Map of id values across all quality_monitors, keyed the same as var.quality_monitors except keys with no id are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "quality_monitors_assets_dir" {
  description = "Map of assets_dir values across all quality_monitors, keyed the same as var.quality_monitors except keys with no assets_dir are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.assets_dir if v.assets_dir != null && length(v.assets_dir) > 0 }
}
output "quality_monitors_baseline_table_name" {
  description = "Map of baseline_table_name values across all quality_monitors, keyed the same as var.quality_monitors except keys with no baseline_table_name are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.baseline_table_name if v.baseline_table_name != null && length(v.baseline_table_name) > 0 }
}
output "quality_monitors_custom_metrics" {
  description = "Map of custom_metrics values across all quality_monitors, keyed the same as var.quality_monitors except keys with no custom_metrics are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.custom_metrics if v.custom_metrics != null && length(v.custom_metrics) > 0 }
}
output "quality_monitors_dashboard_id" {
  description = "Map of dashboard_id values across all quality_monitors, keyed the same as var.quality_monitors except keys with no dashboard_id are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.dashboard_id if v.dashboard_id != null && length(v.dashboard_id) > 0 }
}
output "quality_monitors_data_classification_config" {
  description = "Map of data_classification_config values across all quality_monitors, keyed the same as var.quality_monitors except keys with no data_classification_config are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.data_classification_config if v.data_classification_config != null && length(v.data_classification_config) > 0 }
}
output "quality_monitors_drift_metrics_table_name" {
  description = "Map of drift_metrics_table_name values across all quality_monitors, keyed the same as var.quality_monitors except keys with no drift_metrics_table_name are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.drift_metrics_table_name if v.drift_metrics_table_name != null && length(v.drift_metrics_table_name) > 0 }
}
output "quality_monitors_inference_log" {
  description = "Map of inference_log values across all quality_monitors, keyed the same as var.quality_monitors except keys with no inference_log are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.inference_log if v.inference_log != null && length(v.inference_log) > 0 }
}
output "quality_monitors_latest_monitor_failure_msg" {
  description = "Map of latest_monitor_failure_msg values across all quality_monitors, keyed the same as var.quality_monitors except keys with no latest_monitor_failure_msg are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.latest_monitor_failure_msg if v.latest_monitor_failure_msg != null && length(v.latest_monitor_failure_msg) > 0 }
}
output "quality_monitors_monitor_version" {
  description = "Map of monitor_version values across all quality_monitors, keyed the same as var.quality_monitors except keys with no monitor_version are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.monitor_version if v.monitor_version != null }
}
output "quality_monitors_notifications" {
  description = "Map of notifications values across all quality_monitors, keyed the same as var.quality_monitors except keys with no notifications are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.notifications if v.notifications != null && length(v.notifications) > 0 }
}
output "quality_monitors_output_schema_name" {
  description = "Map of output_schema_name values across all quality_monitors, keyed the same as var.quality_monitors except keys with no output_schema_name are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.output_schema_name if v.output_schema_name != null && length(v.output_schema_name) > 0 }
}
output "quality_monitors_profile_metrics_table_name" {
  description = "Map of profile_metrics_table_name values across all quality_monitors, keyed the same as var.quality_monitors except keys with no profile_metrics_table_name are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.profile_metrics_table_name if v.profile_metrics_table_name != null && length(v.profile_metrics_table_name) > 0 }
}
output "quality_monitors_provider_config" {
  description = "Map of provider_config values across all quality_monitors, keyed the same as var.quality_monitors except keys with no provider_config are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "quality_monitors_schedule" {
  description = "Map of schedule values across all quality_monitors, keyed the same as var.quality_monitors except keys with no schedule are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}
output "quality_monitors_skip_builtin_dashboard" {
  description = "Map of skip_builtin_dashboard values across all quality_monitors, keyed the same as var.quality_monitors except keys with no skip_builtin_dashboard are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.skip_builtin_dashboard if v.skip_builtin_dashboard != null }
}
output "quality_monitors_slicing_exprs" {
  description = "Map of slicing_exprs values across all quality_monitors, keyed the same as var.quality_monitors except keys with no slicing_exprs are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.slicing_exprs if v.slicing_exprs != null && length(v.slicing_exprs) > 0 }
}
output "quality_monitors_snapshot" {
  description = "Map of snapshot values across all quality_monitors, keyed the same as var.quality_monitors except keys with no snapshot are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.snapshot if v.snapshot != null && length(v.snapshot) > 0 }
}
output "quality_monitors_status" {
  description = "Map of status values across all quality_monitors, keyed the same as var.quality_monitors except keys with no status are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.status if v.status != null && length(v.status) > 0 }
}
output "quality_monitors_table_name" {
  description = "Map of table_name values across all quality_monitors, keyed the same as var.quality_monitors except keys with no table_name are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}
output "quality_monitors_time_series" {
  description = "Map of time_series values across all quality_monitors, keyed the same as var.quality_monitors except keys with no time_series are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.time_series if v.time_series != null && length(v.time_series) > 0 }
}
output "quality_monitors_warehouse_id" {
  description = "Map of warehouse_id values across all quality_monitors, keyed the same as var.quality_monitors except keys with no warehouse_id are omitted"
  value       = { for k, v in databricks_quality_monitor.quality_monitors : k => v.warehouse_id if v.warehouse_id != null && length(v.warehouse_id) > 0 }
}

