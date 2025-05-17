terraform {
  backend "s3" {
    bucket = "terraformmbucket251"
    key    = "state"
    region = "us-east-1"
  }
}
