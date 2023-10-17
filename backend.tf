# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "chidex-terraform-remote-state1"
    key            = "nestapp/terraform.tfstate"
    region         = "us-east-1"
    profile        = "terraform-user"
    dynamodb_table = "terraform_state-lock"
  }
}