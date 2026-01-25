provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform2333" {
  bucket = "terraform2333"
}
resource "aws_s3_bucket" "terraform23333" {
  bucket = "terraform23333"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform2333"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}