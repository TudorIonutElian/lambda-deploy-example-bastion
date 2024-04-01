############################################
# Lambda function to get logs from RDS instance
############################################
module "get_logs_func" {
  source = "./modules/lambda"
  lambda_file_name = "lambda_example_playground_func.zip"
  lambda_function_name = "lambda-example-playground-func"
  lambda_role = module.get_logs_func_iam.lambda_function_iam_role.arn
  lambda_handler = "index.handler"
  lambda_runtime = "nodejs18.x"
  lambda_source_code_hash = module.get_logs_data_archive.lambda_output_path
}