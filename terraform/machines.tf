resource "yandex_compute_instance" "vm1" {
  name = "hexlet1"
  zone = var.subnet_zone

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.img.id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${var.ssh_public_key}"
  }

  depends_on = [yandex_mdb_postgresql_cluster.cluster]
}

resource "yandex_compute_instance" "vm2" {
  name = "hexlet2"
  zone = var.subnet_zone

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.img.id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet.id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${var.ssh_public_key}"
  }

  depends_on = [yandex_mdb_postgresql_cluster.cluster]
}
