output "subnet-out-1" {
    value = aws_subnet.sub-stage-1
  
}
output "subnet-out-2" {
    value = aws_subnet.sub-stage-2
  
}
output "aws-internet-gateway" {
    value = aws_internet_gateway.stage-igw.id
  
}

output "stage-rtb" {
    value = aws_route_table.stage-rtb.id
  
}
