variable "tf_state_bucket" {
  description = "Name of S3 bucket to store terraform state file"
  default     = "supsdevops-recipe-app-tf-state"
}

variable "tf_state_lock_table" {
  description = "Name of the Dynamo DB table for TF state locking"
  default     = "devops-recipe-app-api-tf-lock"
}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"
}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "sups@example.com"
}
