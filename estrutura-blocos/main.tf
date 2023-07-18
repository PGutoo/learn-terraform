#Colocamos configurações do terraform
terraform {

}

#Nas aspas dizemos qual o provider, exemplo: aws
provider "aws" {

}

#Cria recursos/serviços no provider. As primeiras aspas é o nome do resource e a
#segunda é o nome que usaremos internamento no codigo do terraform
resource "aws_instance" "nome" {

}

#Serve para pegar alguma informação de fora do codigo do terraform para ser usado dentro do terraform
#A primeira aspas indica o bloco da onde pegaremos a informação, por exemplo aws_ami que pega informações de um imagem da aws
#A segunda é o nome usado interno que referencia o bloco no terraform
data "aws_ami" "nome" {
}

#Damos um nome ao modulo nas aspas, por exemplo, se quiser um modulo de network, posso nomear network
#Existem modulos remotos e modulos locais, difereniada pela configuração dentro do bloco
module "network" {
}

#Serve para mercionar uma variavel que será usada no codigo
#Nomeamos a variavel com o valor dentro das aspas
variable "variable_nome" {

}

#Serve para colocarmos alguma informação gerada para fora do codigo do terraform
#Exemplo, em uma pipeline usar uma informação gerada, para ser usada na pipeline
output "vm1_ip" {
}

#Serve para definirmos porções do codigo ou funções que usamos com muita frequencia (para evitar reescrever)
locals {}