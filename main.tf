provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

resource "random_id" "bucket" {
  byte_length = 8
}

resource "random_id" "bucket_2" {
  byte_length = 4
}

module "bucket" {
  source = "./bucket"

  name       = "my-bucket-${random_id.bucket.hex}"
  versioning = true

  tags = {
    "Name" = "Meu bucket de anotações"
  }

  create_object = true
  object_key    = "files/${random_id.bucket.dec}.txt"
  object_source = "file.txt"
}

resource "aws_instance" "linux-64b" {
  ami           = "${var.ami}"
  instance_type = "${var.type}"

  # ipv6_addresses = "${var.ips}"

  tags = "${var.tags}"
}

#module "bucket-2" {
#  source = "./bucket"
#
#  name = "my-bucket-${random_id.bucket_2.hex}"
#}

