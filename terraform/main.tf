resource "aws_eks_cluster" "eks" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = aws_subnet.eks_subnets[*].id
  }
}

resource "aws_iam_role" "eks_role" {
  name = "eksClusterRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = "eks.amazonaws.com"
      },
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_subnet" "eks_subnets" {
  count = 2
  vpc_id = aws_vpc.main.id
  cidr_block = cidrsubnet("10.0.0.0/16", 8, count.index)
  availability_zone = element(["us-east-1a", "us-east-1b"], count.index)
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
