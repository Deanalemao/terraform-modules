output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.my_ec2.id
}

output "public_ip" {
  description = "EC2 public IP"
  value       = aws_instance.my_ec2.public_ip
}

output "private_ip" {
  description = "EC2 private IP"
  value       = aws_instance.my_ec2.private_ip
}

output "availability_zone" {
  description = "EC2 availability zone"
  value       = aws_instance.my_ec2.availability_zone
}

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.ec2_sg.id
}