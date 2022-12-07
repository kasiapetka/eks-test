variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "aws_access_key" {
  type        = string
  description = "AWS Access Key"
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key"
  sensitive   = true
}