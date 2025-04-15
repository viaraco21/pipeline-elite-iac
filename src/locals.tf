locals {
  tags = merge(
    var.tags,
    {
      Environment = "aula"
      Projeto = "pipeline-elite"
    }
  )

  cluster_name = "${var.eks_cluster_name}"
} 