provider "aws" {
  region = var.region
}

# Backend S3 para el estado de Terraform (opcional)
terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "eks" {
  source = "./modules/eks"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids
  node_groups     = var.node_groups
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}