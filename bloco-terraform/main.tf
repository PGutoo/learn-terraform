terraform {
  required_version = "1.3.0" #Definir versão ou qual conjunto de versão vai rodar o codigo
  #É possível determinar quais versões utilizando operadores < > = != ~> esse indica a partir de uma versão até a ultima

  required_providers {
    #Posso utilizar quantos providers quiser
    aws = {
      version = "1.0"
      source = "hashcorp/aws"
    }

    azurerm = {
      version = "1.0" #também posso usar operadores
      source = "hashcorp/azurerm"
    }
  }

  #Entre aspas indicamos qual o tipo de back end usar e entre chaves ficam os paremetros
  backend "s3" {}
}