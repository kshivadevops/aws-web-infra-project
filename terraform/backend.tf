terraform {
  backend "s3" {
    bucket = "your-s3-bucket-name"
    key    = "terraform.tfstate"
    region = "us-west-2"
    encrypt = true
    dynamodb_table = "terraform-lock-table"
  }
}

