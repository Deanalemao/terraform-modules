module "ec2" {
  source = "./modules/EC2"


  ami_id           = var.ami_id
  instance_type    = var.instance_type
  instance_name    = var.instance_name
  subnet_id        = var.subnet_id
  key_name         = var.key_name
  allowed_ssh_cidr = var.allowed_ssh_cidr


}

module "s3" {
  source = "./modules/S3"

  bucket_name = var.bucket_name
  environment = var.environment

}