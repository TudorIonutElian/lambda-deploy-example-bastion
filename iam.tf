############################################
# IAM role for lambda function
############################################
module "lambda-example-playground-func_iam" {
  source = "./modules/iam"
  lambda_function_iam_role_name = "lambda-example-playground-func"
}