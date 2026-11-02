variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}

variable "environment" {
  description = "Environment for the S3 bucket"
  type        = string
  default     = "development"
}