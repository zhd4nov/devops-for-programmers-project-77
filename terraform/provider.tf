terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.129.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.1"
    }
    datadog = {
      source  = "DataDog/datadog"
      version = "3.36.1"
    }
  }
}

provider "yandex" {
  service_account_key_file = file(var.path_to_key)
  cloud_id                 = var.yc_cloud_id
  folder_id                = var.yc_folder_id
  zone                     = var.subnet_zone
}

provider "local" {}

provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
  api_url = var.datadog_api_url
}
