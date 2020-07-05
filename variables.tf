variable "region" {
  default     = "us-east-1"
  description = "Main region"
}

variable "profile" {
  default = "g3araujo"
}

variable "ami" {
  default = "ami-09d95fab7fff3776c"
}

variable "type" {
  default = "t2.micro"
}

variable "ips" {
  type    = "list"
  default = ["3ffe:1900:4545:3:200:f8ff:fe21:67cf", "3ffe:1900:4545:3:200:f8ff:fe21:67cd"]
}

variable "tags" {
  type = "map"

  default = {
    "Name" = "linux-64b"
    "Env"  = "infra"
  }
}
