terraform {
  backend "s3" {
    bucket         = "terraform-state-platform-github"
    key            = "kubernetes-nginx.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-table"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::730335231873:role/ip-github-prd"
  }
}