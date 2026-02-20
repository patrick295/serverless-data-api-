resource "aws_lambda_function" "process_sales" {
  function_name = "ProcessSalesFile"
  role          = aws_iam_role.lambda_role.arn
  handler       = "app.lambda_handler"
  runtime       = "python3.9"

  filename         = "../lambdas/process_sales.zip"
  source_code_hash = filebase64sha256("../lambdas/process_sales.zip")
}

Repeat similarly for API Lambda.
