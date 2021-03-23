module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.77.0"
  
  name = "project3-vpc"
  cidr = "10.0.0.0/16"
}