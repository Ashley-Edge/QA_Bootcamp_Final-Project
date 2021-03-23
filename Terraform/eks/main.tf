module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "14.0.0"
  cluster_name = "project3-cluster"
  cluster_version = "1.17"
  vpc_id = var.vpc_id
  subnets = [var.subnet1_id, var.subnet2_id]
  #manage_cluster_iam_resources = false
  #cluster_iam_role_name = EKSCluster

worker_groups = [
    {
        instance_type = "t2.small"
        asg_max_size = 2
    }
]
}
