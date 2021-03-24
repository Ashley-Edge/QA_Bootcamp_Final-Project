data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}



module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "14.0.0"
  cluster_name = "project3-cluster"
  cluster_version = "1.17"
  vpc_id = var.vpc_id
  subnets = [var.subnet1_id, var.subnet2_id]
  cluster_create_security_group = true
  #manage_cluster_iam_resources = false
  #cluster_iam_role_name = EKSCluster
  cluster_endpoint_private_access = true



  workers_group_defaults = {
      workers_default_ami_id = "ami-08f5c9e1e884be0cc"
      root_volume_type = "gp2"
    }

  worker_groups = [
    {
        instance_type = "t2.small"
        asg_desired_capacity = 2
    }
  ]
}