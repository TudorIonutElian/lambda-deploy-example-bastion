############################################
# Lambda function to get logs from RDS instance
############################################
module "lambda_deploy_example_bastion_func" {
  source = "./modules/lambda"
  lambda_file_name = "lambda-deploy-example-bastion-func.zip"
  lambda_function_name = "lambda-deploy-example-bastion-func"
  lambda_role = module.lambda_deploy_example_bastion_iam.lambda_function_iam_role.arn
  lambda_handler = "index.handler"
  lambda_runtime = "nodejs18.x"
  lambda_source_code_hash = module.lambda_deploy_example_bastion.lambda_output_path
}