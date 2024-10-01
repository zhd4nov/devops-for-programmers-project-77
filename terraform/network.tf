resource "yandex_vpc_network" "net" {
  name = "hexlet-network"
}

resource "yandex_vpc_subnet" "subnet" {
  name           = "hexlet-network"
  zone           = var.subnet_zone
  network_id     = yandex_vpc_network.net.id
  v4_cidr_blocks = ["192.168.192.0/24"]
  folder_id      = var.yc_folder_id
}