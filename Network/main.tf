provider "okta" {
  org_name  = "swissre-dev"
  base_url  = "oktapreview.com"
}

resource "okta_network_zone" "test32" {
  name     = "test32"
  type     = "IP"
  gateways = ["1.2.3.4/24", "2.3.4.5-2.3.4.50"]
  proxies  = ["2.2.3.4/24", "3.3.4.5-3.3.4.50"]
}

resource "okta_network_zone" "test1" {
  name     = "test1"
  type     = "IP"
  gateways = ["1.2.3.4/24", "2.3.4.5-2.3.4.20"]
  proxies  = ["2.2.3.4/24", "3.3.4.5-3.3.4.20"]
}