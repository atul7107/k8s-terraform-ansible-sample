# Retrieve AWS credentials from env variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
provider "aws" {
  access_key = "AKIAJWO7RVNF2MZ7BYJQ"
  secret_key = "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"
  region = "${var.region}"
}
