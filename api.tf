
resource "aws_apigatewayv2_api" "http_api" {
  name          = "${var.project_name}-api"
  protocol_type = "HTTP"
}


Add integration + route pointing to Lambda.

Attach Cognito authorizer for authentication.
