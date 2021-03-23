output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

#output "route_id" {
#    value = aws_route_table.prod-route-table.id
#}
#output "sec_group_id" {
#    value = aws_security_group.allow_web.id
#}
#output "internet_gate" {
#    value = aws_internet_gateway.gw
#}