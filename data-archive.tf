############################################
# Data archive for lambda function
############################################
module "lambda_deploy_example_bastion" {
  source = "./modules/data-archive"
  type = "zip"
  source_dir = "example-lambda-bastion"
  output_path = "example-lambda-bastion"
}