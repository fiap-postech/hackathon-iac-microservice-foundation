terraform {
  required_version = ">= 1.0.0"

  cloud {
    organization = "fiap-pos-tech"

    workspaces {
      name = "hackathon-microservice-foundation"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.56.0"
    }
  }
}