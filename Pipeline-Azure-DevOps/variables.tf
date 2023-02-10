variable "location" {
  description = "Variavel que indica a região onde os recursos vão ser criados"
  type        = string
  default     = "West Europe"
}

variable "aws_pub_key" {
  description = "chave publica para vm na aws"
  type        = string

}

variable "azure_pub_key" {
  description = "chave publica para vm na azure"
  type        = string

}