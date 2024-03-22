locals {
  default_region = "us-east-1"

  vpc_name = "tc-vpc"

  bucket = {
    name      = "fiapsoat2grupo13-cdn"
    log       = "log-fiapsoat2grupo13-cdn"
    origin_id = "fiapsoat2grupo13-cdn-origin"
  }

  service_cluster = {
    name = "hackathon"

    provider = {
      name   = "FARGATE_SPOT"
      weight = 100
      base   = 1
    }
  }

  congnito = {
    user_pool = {
      name = "hackathon-user-pool"

      account_recovery_setting = {
        recovery_mechanism = {
          name     = "verified_email"
          priority = 1
        }
      }

      client = {
        name                = "hackathon-user-pool-client"
        generate_secret     = true
        explicit_auth_flows = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_PASSWORD_AUTH"]
      }
    }
  }
}