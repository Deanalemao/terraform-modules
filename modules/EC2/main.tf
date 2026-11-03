# Get existing subnet information

data "aws_subnet" "selected" {
  id = var.subnet_id
}

# Create Security Group

resource "aws_security_group" "ec2_sg" {
  name        = "${var.instance_name}-sg"
  description = "Security Group for Terraform EC2"
  vpc_id      = data.aws_subnet.selected.vpc_id

  # Inbound SSH access

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_cidr]
  }

  # Allow outbound traffic

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.instance_name}-sg"
  }
}

# Create EC2 Instance

resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  key_name                    = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }
}