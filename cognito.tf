resource "aws_cognito_user_pool" "user_pool" {
  name = "${var.project_name}-user-pool"
}

resource "aws_cognito_user_pool_client" "client" {
  name         = "api-client"
  user_pool_id = aws_cognito_user_pool.user_pool.id
}



This secures your API with JWT authentication.

Enterprise-ready.
