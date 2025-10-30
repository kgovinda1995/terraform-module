variable vpc_id { }
variable my_ip { }
variable availability_zone {}
variable environment {}  
variable subnet_id {}
variable public_key_location {}
variable private_key_location {}
variable image_name {}
variable "instance_type" {
  type = list(string)
}