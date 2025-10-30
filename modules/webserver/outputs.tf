
output "aws-ami-id" {
    value = data.aws_ami.latest-ubuntu-image.id
}

output "aws-instance-id" {
    value = aws_instance.stage-server.id
}

output "aws-ec2-public-ip" {
    value = aws_instance.stage-server.public_ip
}