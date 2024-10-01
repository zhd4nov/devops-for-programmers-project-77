variable "yc_iam_token" {
    type = string
    sensitive = true
}

variable "yc_cloud_id" {
    type = string
    sensitive = true
}

variable "yc_folder_id" {
    type = string
    sensitive = true
}

variable "db_name" {
    type = string
    sensitive = true
}

variable "db_user" {
    type = string
    sensitive = true
}

variable "db_password" {
    type = string
    sensitive = true
}

variable "yc_postgresql_version" {
    type = number
}

variable "ssh_public_key" {
    type = string
    sensitive = true
}

variable "path_to_key" {
    type = string
}

variable "datadog_api_key" {
  type      = string
  sensitive = true
}

variable "datadog_app_key" {
  type      = string
  sensitive = true
}

variable "datadog_api_url" {
  type      = string
  sensitive = true
}

variable "instance_name" {
  type      = string
  sensitive = true
}

variable "site_https_url" {
  type      = string
  sensitive = true
}

variable "site_http_url" {
  type      = string
  sensitive = true
}
