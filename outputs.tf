output "aws-vpc-id" {
    value = aws_vpc.stage-vpc.id
}
output "subent-1-id" {
    value = module.my-subnet.subnet-out-1.id
}
output "subent-1-id" {
    value = module.my-subnet.subnet-out-2.id
}
output "aws-internet-gateway" {
    value = module.my-subnet.aws-internet-gateway.id
  
}

output "stage-rtb" {
    value = module.my-subnet.stage-rtb.id
  
}

output "aws-ami-id" {
    value = module.webserver.aws-ami-id.id
}

output "aws-instance-id" {
    value = module.webserver.aws-instance-id.id
}

output "aws-ec2-public-ip" {
    value = module.webserver.aws-ec2-public-ip
}





