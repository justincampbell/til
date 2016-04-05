provider "aws" {
  region = "us-east-1"
}

variable "host" {
  default = "til"
}

variable "domain" {
  default = "justincampbell.me"
}

variable "bucket" {
  default = "til.justincampbell.me"
}

resource "dnsimple_record" "til" {
  domain = "${var.domain}"
  name   = "${var.host}"
  type   = "CNAME"
  value  = "${aws_s3_bucket.default.website_endpoint}"
}

resource "aws_s3_bucket" "default" {
  bucket = "${var.bucket}"
  acl    = "public-read"
  policy = "${template_file.policy.rendered}"

  logging {
    target_bucket = "${var.bucket}-logs"
  }

  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "logs" {
  bucket = "${var.bucket}-logs"
}

resource "template_file" "policy" {
  filename = "policy.json"

  vars {
    bucket = "${var.bucket}"
  }
}
