resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "-_+"
  min_upper        = 3
  min_lower        = 3
  min_special      = 3
}

module "my_big_secret_example" {
  source       = "github.com/pgdevelopers/terraform-gcp-secret?ref=<version-tag>"
  secret_name  = "my-big-secret"
  secret_value = random_password.password.result
  project      = var.project_id
}