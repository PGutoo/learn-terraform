terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      version = "3.73.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "danielgil"
      managed-by = "terraform"
    }
  }
}

#terraform init,  faz inicialização do terraform, verificando o provider e instalando o mesmo
#terraform validate, verifica se o codigo está valido, sem erro
#terraform plan, mostra na tela um plano do que o terraform faz das configurações que fizemos
#terraform plan -out-plan pode ser usado para extrair o plano dado pelo terraform colocar um . depois para nomear
#terraform apply comando que faz deploy do codigo
#terraform destroy destroi após aplicado
#terraform fmt ajuda na sintaxe organizando