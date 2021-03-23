output "cluster_endpoint" {
    description = "Endpoint for EKS control plane."
    value = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
    description = "Security group ids"
    value = module.eks.cluster_security_group_id
}

#output "kubectl_config" {
#    description = "kubectl config"
#    value = module.eks.kubectl_config
#}

output "config_map_aws_auth" {
    description = "config"
    value = module.eks.config_map_aws_auth 
}