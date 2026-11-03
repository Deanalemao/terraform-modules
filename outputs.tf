# EC2 Outputs

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2.instance_id
}

output "ec2_public_ip" {
  description = "EC2 public IP"
  value       = module.ec2.public_ip
}

output "ec2_private_ip" {
  description = "EC2 private IP"
  value       = module.ec2.private_ip
}

output "ec2_availability_zone" {
  description = "EC2 availability zone"
  value       = module.ec2.availability_zone
}

output "security_group_id" {
  description = "Security Group ID"
  value       = module.ec2.security_group_id
}

# S3 Outputs

output "s3_bucket_name" {
  description = "S3 bucket name"
  value       = module.s3.bucket_name
}

output "s3_bucket_arn" {
  description = "S3 bucket ARN"
  value       = module.s3.bucket_arn
}

output "s3_bucket_region" {
  description = "S3 bucket region"
  value       = module.s3.bucket_region
}