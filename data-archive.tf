############################################
# Data archive for lambda function
############################################
module "lambda-deploy-example-bastion" {
  source = "./modules/data-archive"
  type = "zip"
  source_dir = "lambda-deploy-example-bastion"
  output_path = "lambda_deploy_example_bastion"
}