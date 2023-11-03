# import {
# # Provider-defined resource ID of the cloud resource to be imported
#   id = "projects/peppy-ward-398202/instances/raven-test"

#   # Terraform resource address to be created
#   to = google_sql_database_instance.postgre_sql
# }

data google_sql_database_instance postgre_sql {
  name = "raven-test"
  project = var.project_id
}

resource "google_sql_database" "cloud_database" {
    name = "my_db"
    instance = data.google_sql_database_instance.postgre_sql.name
    project = var.project_id
}

resource "random_password" "user" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "google_sql_user" "sql_user" {
  project = var.project_id
  name     = "mypostgre"
  instance = data.google_sql_database_instance.postgre_sql.name
  password = random_password.user.result
}



