locals {
  formatted_name = replace(lower(var.secret_name), "_", "-")
}

resource "google_secret_manager_secret" "key" {
  project = var.project_id
  replication {
    automatic = true
  }
  secret_id = local.formatted_name
  labels    = var.labels
}

resource "google_secret_manager_secret_version" "value" {
  secret      = google_secret_manager_secret.key.name
  secret_data = var.secret_value
}
