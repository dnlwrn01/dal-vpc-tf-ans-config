// required
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

// droplet creation
resource "digitalocean_droplet" "api-service" {
    count = 1
    name = "api-service-${count.index + 1}"
    image = "ubuntu-20-04-x64"
    region = "nyc3"
    size = "s-1vcpu-1gb"
    ipv6 = true
    ssh_keys = [var.ssh_key_fingerprint]

  // ssh connection
  connection {
    type        = "ssh"
    host        = self.ipv4_address
    user        = "root"
    private_key = file("~/.ssh/id_rsa") // fixme: cicd
    timeout = "30m"
  }

  // copy playbook to resource
  provisioner "file" {
    source      = "./ansible"
    destination = "/"
  }
  
  // provision with remote, install ansible, run playbook
  provisioner "remote-exec" {
    inline = [
      "sleep 40",
      "apt-get install -y ansible",
      "cd /",
      "ansible-playbook -i 'localhost,' -c local ./ansible/playbook.yml",
    ]
  }
}