

# common ec2 variables

variable "ec2_ami" {
  description = "ami id for ec2 instance"
}

variable "ec2_instance_type" {
  description = "instance type for ec2"
}




variable "key_pair_id" {
  description = "key pair id for ec2 instance"
  
}

variable "pvt_sub_id" {
  description = "value for private subnet"
}

variable "security_sg_id" {
  description = "The ID of the security group."
  
}

variable "key_pair_name" {
  description = "this is the key pair name"
}

variable "private_instance_name" {
  description = "name for private ec2 instance"
}

variable "associate_private_ip_address" {
    type = bool
    description = " associate_private_ip_address"
  
}