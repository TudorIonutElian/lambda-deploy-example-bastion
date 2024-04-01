/**********************************************************
  # Configure S3 Backend
**********************************************************/

terraform {
  backend "s3" {
    bucket         = "lambda-deploy-example-bastion"
    key            = "lambda-deploy-example-bastion.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "lambda-deploy-example-bastion"
  }
}