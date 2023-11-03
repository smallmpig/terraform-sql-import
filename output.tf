output "sql_user" {
  value = google_sql_user.sql_user.name
}

output "sql_password" {
    sensitive = true
    value = google_sql_user.sql_user.password
}

output "databae_name" {
    value = google_sql_database.cloud_database.name
}