variable "default_region" {
  description = "The default region for the S3 bucket."
  type        = string
  default     = "us-east-1"
}

#variable "secondary_region" {
#  description = "The secondary region for other resources."
#  type        = string
#  default     = "us-west-1"
#}

variable "regions" {
  description = "List of regions where EC2 instances will be created."
  type        = map(string)
  default = {
    "us-east-1"      = "default"
    "us-west-2"      = "us-west-2"
 #   "eu-west-1"      = "eu-west-1"
 #   "ap-southeast-1" = "ap-southeast-1"
 #   "ap-southeast-2" = "ap-southeast-2"
 #   "ap-northeast-1" = "ap-northeast-1"
 #   "sa-east-1"      = "sa-east-1"
  }
}

variable "ami_ids" {
  description = "Map of AMI IDs for each region."
  type        = map(string)
  default = {
    "us-east-1"      = "ami-0e86e20dae9224db8"
    "us-west-2"      = "ami-05134c8ef96964280"
  #  "eu-west-1"      = "ami-03cc8375791cb8bcf"
  #  "ap-southeast-1" = "ami-01811d4912b4ccb26"
  #  "ap-southeast-2" = "ami-0892a9c01908fafd1"
  #  "ap-northeast-1" = "ami-0cab37bd176bb80d3"
  #  "sa-east-1"      = "ami-01a38093d387a7497"
  }
}

variable "instance_type" {
  description = "The instance type for EC2 instances."
  type        = string
  default     = "t2.micro"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket."
  type        = string
  default     = "nocping-terraform-bucket-random"
}
