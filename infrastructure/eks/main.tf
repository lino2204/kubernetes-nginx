module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.4.0"  # Ensure you use the latest supported version
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.27"
  subnet_ids      = ["subnet-xxxxxx", "subnet-yyyyyy", "subnet-zzzzzz"]
  vpc_id          = "vpc-xxxxxx"

  eks_managed_node_groups = {
    eks_nodes = {
      desired_size = 2
      max_size     = 3
      min_size     = 1
      instance_types = ["t3.medium"]
    }
  }
}