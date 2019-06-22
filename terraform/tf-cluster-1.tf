provider "aws" {
  version = ">= 1.47.0"
  region  = "us-east-2"
}

module "tf-cluster-1" {
  source                          = "terraform-aws-modules/eks/aws"
  cluster_name                    = "tf-cluster-1"
  subnets                         = ["subnet-003723d42fd32c293", "subnet-0905be78666d92046", "subnet-032bfd42571633b70"]
  vpc_id                          = "vpc-01532c214dbd4baf4"
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true
  cluster_version                 = 1.12

  worker_groups = [
    {
      instance_type        = "m5.large"
      asg_desired_capacity = 3
      asg_max_size         = 10
    },
  ]

  tags = {
    environment = "private-tf-cluster-2"
  }
}
