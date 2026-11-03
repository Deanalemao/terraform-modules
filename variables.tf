# AWS Configuration
variable "aws_region" {
  description = "AWS region"
  type        = string
}

# EC2 Configuration

variable "ami_id" {
  description = "Ubuntu AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet where EC2 will be launched"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "IP address allowed to SSH into EC2"
  type        = string
}

# S3 Configuration

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}

variable "environment" {
  description = "Environment for S3 bucket"
  type        = string
  default     = "development"
}