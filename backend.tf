terraform {
  backend "s3" {
    bucket = "terraform-practic"
    key    = "backend/2tier.tfstate"
    region = "us-east-1"
    dynamodb_table = "Terraform"
  }
}
