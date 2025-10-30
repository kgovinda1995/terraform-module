provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAZ3OZYLMB3VYYP7MS"
    secret_key = "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"
}
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = var.vpc_cidr_block

  azs  = [var.availability_zone]
  
  public_subnets  = var.subnet_cidr_block

  public_subnet_tags = { Name = "${var.environment}-sub-1"}

 

  tags = {
        Name : "${var.environment}-vpc"
        Env: var.environment
        Terraform = "true"
    }
}
 

module "webserver" {
    source = "./modules/webserver"
    vpc_id = module.vpc.vpc_id
    my_ip  = var.my_ip
    availability_zone = var.availability_zone
    environment = var.environment
    instance_type = var.instance_type
    subnet_id = module.vpc.public_subnets[0]
    public_key_location = var.public_key_location
    private_key_location = var.private_key_location
    image_name = var.image_name
}
