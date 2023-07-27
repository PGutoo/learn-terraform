terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1" #Devemos usar os valores de credenciais nas variaveis de ambiente, para evitar que usem as credenciais

  default_tags {
    tags = {
      owner      = "pedro"
      managed-by = "terraform"
    }
  }
}