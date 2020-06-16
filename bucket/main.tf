provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  profile = "g3araujo"
}

resource "aws_s3_bucket" "b" {
  bucket = "bktg3araujo"
  acl    = "private"

  tags = {
    Name        = "Bucket Teste"
    Environment = "infra"
  }
}

resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.b.id}"
  key    = "Aviso.txt"
  source = "index.txt"
  etag   = "${md5(file("index.txt"))}"
}

output "bucket" {
  value = "${aws_s3_bucket.b.id}"
}

output "etag" {
  value = "${aws_s3_bucket_object.object.etag}"
}