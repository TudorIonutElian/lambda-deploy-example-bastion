############################################
# Data archive for lambda function
############################################
module "lambda-deploy-example-bastion" {
  source = "./modules/data-archive"
  type = "zip"
  source_dir = "lambda-deploy-example-bastion"
  output_path = "lambda-deploy-example-bastion-func"
}