output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = module.eks.cluster_name
}

output "ecr_repository_urls" {
  description = "The URLs of the ECR repositories with workspace prefix"
  value       = { for repo in aws_ecr_repository.repositories : repo.name => repo.repository_url }
}
