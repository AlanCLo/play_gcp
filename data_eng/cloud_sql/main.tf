provider "google" {
  project = var.project
  region  = var.region
}

resource "google_sql_database_instance" "master" {
  name = "instance"
  database_version = "MYSQL_5_7"
  region = var.region
  settings {
    tier = "db-f1-micro"
  }
}
