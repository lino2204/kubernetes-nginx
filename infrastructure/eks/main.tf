module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.4.0"  # Ensure you use the latest supported version
  cluster_name    = "kubernetes-nginx"
  cluster_version = "1.27"
  subnet_ids      = ["subnet-0dc05aad49e7d2683", "subnet-03363be1ce4604a62"]
  vpc_id          = "vpc-0c30330460fa51680"

  eks_managed_node_groups = {
    eks_nodes = {
      desired_size = 2
      max_size     = 3
      min_size     = 1
      instance_types = ["t3.medium"]
    }
  }
}