resource "aws_cognito_user_pool" "hackathon_user_pool" {
  name = local.congnito.user_pool.name

  account_recovery_setting {
    recovery_mechanism {
      name     = local.congnito.user_pool.account_recovery_setting.recovery_mechanism.name
      priority = local.congnito.user_pool.account_recovery_setting.recovery_mechanism.priority
    }
  }
}

resource "aws_cognito_user_pool_client" "hackathon_user_pool_client" {
  name                = local.congnito.user_pool.client.name
  user_pool_id        = aws_cognito_user_pool.hackathon_user_pool.id
  generate_secret     = local.congnito.user_pool.client.generate_secret
  explicit_auth_flows = local.congnito.user_pool.client.explicit_auth_flows
}