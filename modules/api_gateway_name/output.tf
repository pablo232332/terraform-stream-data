output "api_gateway_url" {
  value = aws_api_gateway_deployment.deployment.invoke_url
}

output "api_gateway_arn" {
  value = aws_api_gateway_rest_api.api_gateway.execution_arn
}