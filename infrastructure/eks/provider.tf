terraform {
  backend "s3" {
    bucket         = "terraform-state-platform-github"
    key            = "kubernetes-nginx.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-table"
    encrypt        = true
    profile        = "oidc"
  }
}

provider "aws" {
  profile = "oidc"
}
