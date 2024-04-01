############################################
# IAM role for lambda function
############################################
module "lambda-deploy-example-bastion_iam" {
  source = "./modules/iam"
  lambda_function_iam_role_name = "lambda-deploy-example-bastion"
}