variable "secret_name" {
  type        = string
  description = "this is the desired name of the secret, should be lowercase kebab"
}

variable "secret_value" {
  type        = string
  description = "hidden value of the secret"
}

variable "project_id" {
  type        = string
  description = "project id"
}

variable "labels" {
  type        = map(string)
  description = "Labels to help organize secrets"
  default     = { "terraform" : "true" }
}
