resource "google_sql_database_instance" "postgre_sql" {
  database_version     = "POSTGRES_15"
  deletion_protection  = true
  encryption_key_name  = null
  instance_type        = "CLOUD_SQL_INSTANCE"
  maintenance_version  = "POSTGRES_15_4.R20230830.01_01"
  master_instance_name = null
  name                 = "raven-test"
  project              = "peppy-ward-398202"
  region               = "asia-east1"
  root_password        = null # sensitive
  settings {
    activation_policy           = "ALWAYS"
    availability_type           = "ZONAL"
    collation                   = null
    connector_enforcement       = "NOT_REQUIRED"
    deletion_protection_enabled = true
    disk_autoresize             = true
    disk_autoresize_limit       = 0
    disk_size                   = 10
    disk_type                   = "PD_SSD"
    edition                     = "ENTERPRISE"
    pricing_plan                = "PER_USE"
    tier                        = "db-custom-2-8192"
    time_zone                   = null
    user_labels                 = {}
    backup_configuration {
      binary_log_enabled             = false
      enabled                        = false
      location                       = null
      point_in_time_recovery_enabled = false
      start_time                     = "04:00"
      transaction_log_retention_days = 7
      backup_retention_settings {
        retained_backups = 7
        retention_unit   = "COUNT"
      }
    }
    insights_config {
      query_insights_enabled  = true
      query_plans_per_minute  = 5
      query_string_length     = 1024
      record_application_tags = false
      record_client_address   = true
    }
    ip_configuration {
      allocated_ip_range                            = null
      enable_private_path_for_google_cloud_services = false
      ipv4_enabled                                  = true
      private_network                               = "projects/peppy-ward-398202/global/networks/default"
      require_ssl                                   = false
      authorized_networks {
        expiration_time = null
        name            = "bi"
        value           = "61.219.174.44"
      }
    }
    location_preference {
      follow_gae_application = null
      secondary_zone         = null
      zone                   = "asia-east1-b"
    }
    maintenance_window {
      day          = 6
      hour         = 16
      update_track = null
    }
  }
  timeouts {
    create = null
    delete = null
    update = null
  }
}