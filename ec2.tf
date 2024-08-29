#provider "aws" {
#  region  = "us-east-1"
#}
module "ec2_instance" {
  source   = "terraform-aws-modules/ec2-instance/aws"
  version  = "~> 3.0"
  for_each = var.regions
  #region        = var.regions[each.key]
  ami           = var.ami_ids[each.key]
  instance_type = var.instance_type
  user_data     = file("${path.module}/template/user_data.sh")

  tags = {
    Name = "EC2-Instance-${each.key}"
  }
}

#module "s3_bucket" {
#  source  = "terraform-aws-modules/s3-bucket/aws"
#  version = "~> 2.0"
#  bucket  = var.s3_bucket_name
#  acl     = "private"
#}
