# Create a Lambda function
resource "aws_lambda_function" "lambda_function" {
  function_name    = var.function_name
  role             = aws_iam_role.lambda_execution_role.arn
  handler          = var.handler
  runtime          = var.runtime
  timeout          = var.timeout
  memory_size      = var.memory_size
  s3_bucket        = var.source_bucket
  s3_key           = var.s3_key
}
