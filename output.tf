output "apigw_endpoint" {
  value = {
    endpoint = aws_apigatewayv2_api.apigw_http_endpoint.api_endpoint
    id       = aws_apigatewayv2_api.apigw_http_endpoint.id
  }
}