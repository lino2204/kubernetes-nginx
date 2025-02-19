module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.4.0"

  cluster_name    = "kubernetes-nginx"
  cluster_version = "1.27"
  subnet_ids      = ["subnet-03d5f296cbe6f9925", "subnet-06a837fe8cac23329"]
  vpc_id          = "vpc-033705b2c52ed5260"

  eks_managed_node_groups = {
    eks_nodes = {
      desired_size = 2
      max_size     = 3
      min_size     = 1
      instance_types = ["t3.medium"]
    }
  }
}