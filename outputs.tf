output "aws-vpc-id" {
    value = module.vpc.vpc_id
}
output "subent-1-id" {
    value = module.vpc.public_subnets[0]
}

output "subent-2-id" {
    value = module.vpc.public_subnets[1]
}

output "aws-internet-gateway" {
    value = module.vpc.public_internet_gateway_route_id
  
}

output "stage-rtb" {
    value = module.vpc.public_route_table_ids
  
}

output "aws-ami-id" {
    value = module.webserver.aws-ami-id
}

output "aws-instance-id" {
    value = module.webserver.aws-instance-id
}

output "aws-ec2-public-ip" {
    value = module.webserver.aws-ec2-public-ip
}





