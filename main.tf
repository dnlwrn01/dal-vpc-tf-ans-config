// required
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# include provider
provider "digitalocean" {
  token = "${var.do_token}"
}

# include compute module
module "compute" {
  source = "./compute"
  ssh_key_fingerprint = var.ssh_key_fingerprint
}
