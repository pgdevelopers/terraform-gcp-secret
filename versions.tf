terraform {
  required_providers {
    google = "<5.0,>= 4.0.0"
  }
}

provider "google" {
  project = var.project_id
}