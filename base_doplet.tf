resource "digitalocean_droplet" "matt" {
    image = "debian-8-x64"
    name = "matt"
    region = "nyc2"
    size = "512mb"
    private_networking = false
    backups = false
    ipv6 = false
    user_data = false
    tags = [
        "blog",
    ]
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]

    
    # provisioner "file" {
    #     source = "./provisioning"
    #     destination = "/tmp/ansible"
    # }


    # provisioner "remote-exec" { # install and run ansible
    #     connection = {
    #     user = "root"
    #     type = "ssh"
    #     private_key = "${file("/Users/mjones/.ssh/id_do")}"
    #     ssh_agent = false
    #     timeout = "30s"
    #     },
    #     inline = [
    #     "export PATH=$PATH:/usr/bin",
    #     ]
    # }


}

# resource "digitalocean_domain" "gitlab" {
#     name = "www.caffeinatedengineering.io"
#     ip_address = "${digitalocean_droplet.gitlab.ipv4_address}"
# }

# # Add a record to the domain
# resource "digitalocean_record" "gitlab" {
#     domain = "${digitalocean_domain.gitlab.name}"
#     type = "A"
#     name = "gitlab"
# }
