import {
  to = google_sql_database_instance.postgre_sql
  id = "i-abcd1234"
}

resource google_sql_database_instance postgre_sql {
  database_version = "POSTGRES_15"
  name = "raven-test"
}

resource "google_sql_database" "cloud_database" {
    name = "my_db"
    instance = google_sql_database_instance.postgre_sql.name
    project = var.project_id
}

resource "random_password" "user" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "google_sql_user" "sql_user" {
  name     = "mypostgre"
  instance = google_sql_database_instance.postgre_sql.name
  password = random_password.user.result
}



