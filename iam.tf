############################################
# IAM role for lambda function
############################################
module "lambda_deploy_example_bastion_iam" {
  source = "./modules/iam"
  lambda_function_iam_role_name = "lambda-deploy-example-bastion"
}