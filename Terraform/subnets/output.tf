#output "server_public_ip" {
#  value = aws_eip.one.public_ip
#}
#output "net_id" {
#  value = aws_network_interface.web-server-nic.id
#}

output "subnet1_id" {
  value = aws_subnet.subnet-1.id
}

output "subnet2_id" {
  value = aws_subnet.subnet-2.id
}