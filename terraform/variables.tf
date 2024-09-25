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