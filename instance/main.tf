provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

resource "aws_instance" "linux-64b" {
  ami           = "${var.ami}"
  instance_type = "${var.type}"

  # ipv6_addresses = "${var.ips}"

  tags = "${var.tags}"
}
