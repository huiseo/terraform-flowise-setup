variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-2"  # Seoul region
}

variable "stage" {
  description = "Prefix for resource names"
  type        = string
  default     = "flowise"
}
