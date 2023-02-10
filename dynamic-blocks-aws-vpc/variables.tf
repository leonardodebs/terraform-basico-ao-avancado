variable "portas" {
  description = "Portas que serão abertas no sec.group"
  type        = list(number)
  default     = [22, 80, 443, 8080]

}