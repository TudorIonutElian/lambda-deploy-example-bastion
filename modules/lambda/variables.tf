variable "lambda_file_name" {
  description = "The name of the lambda function file"
  type        = string
}

variable "lambda_function_name" {
  description = "The name of the lambda function"
  type        = string
}

variable "lambda_role" {
  description = "The role of the lambda function"
  type        = string
}

variable "lambda_handler" {
  description = "The name of the lambda function handler"
  type        = string
}

variable "lambda_runtime" {
  description = "The runtime of the lambda function"
  type        = string
}

variable "lambda_source_code_hash" {
  description = "The source code hash of the lambda function"
  type        = string
}