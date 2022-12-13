# Input Vars
variable "region" {
  description = "Provides details about a specific AWS region."
  type        = string
}

variable "profile" {
  description = "Tags to set on the bucket"
  type        = map(string)
}