resource "yandex_cm_certificate" "cert" {
  name    = "sometestapps"
  domains = ["sometestapps.ru"]

  managed {
    challenge_type = "DNS_CNAME"
  }
}

resource "yandex_dns_zone" "zone" {
  name   = "dns-zone"
  zone   = "sometestapps.ru."
  public = true
}

resource "yandex_dns_recordset" "record" {
  zone_id = yandex_dns_zone.zone.id
  name    = "sometestapps.ru."
  type    = "A"
  ttl     = 600
  data    = [yandex_alb_load_balancer.balancer.listener[0].endpoint[0].address[0].external_ipv4_address[0].address]
}