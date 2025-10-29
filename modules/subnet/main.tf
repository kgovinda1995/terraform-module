resource "aws_subnet" "sub-stage-1" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet_cidr_block[0]
    availability_zone = var.availability_zone
    map_public_ip_on_launch = true
    tags = {
        Name : "${var.environment}-sub-1"
        Env: var.environment
    }
}

resource "aws_subnet" "sub-stage-2" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet_cidr_block[1]
    availability_zone = var.availability_zone
    map_public_ip_on_launch = true
    tags = {
        Name : "${var.environment}-sub-2"
        Env: var.environment
    }
}

resource "aws_internet_gateway" "stage-igw" {

    vpc_id = var.vpc_id

    tags = {
        Name : "${var.environment}-igw"
        Env: var.environment
    }
}

/*resource "aws_default_route_table" "default-stage-rtb" {
    default_route_table_id = aws_vpc.stage-vpc.default_route_table_id

      route {
       cidr_block = "0.0.0.0/0"

       gateway_id = aws_internet_gateway.stage-igw.id
      }
  
}*/
resource "aws_route_table" "stage-rtb" {
      vpc_id = var.vpc_id

      route {
       cidr_block = "0.0.0.0/0"

       gateway_id = aws_internet_gateway.stage-igw.id
      }
  
}

resource "aws_route_table_association" "a-rtb-subnet-1" {
         subnet_id = aws_subnet.sub-stage-1.id
         route_table_id = aws_route_table.stage-rtb.id
}
resource "aws_route_table_association" "a-rtb-subnet-2" {
         subnet_id = aws_subnet.sub-stage-2.id
         route_table_id = aws_route_table.stage-rtb.id
}         