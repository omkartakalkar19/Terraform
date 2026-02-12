

variable "associate_public_ip_address" {
    type = bool
    description = " associate_public_ip_address"
  
}



# common ec2 variables

variable "ec2_ami" {
  description = "ami id for ec2 instance"
}

variable "ec2_instance_type" {
  description = "instance type for ec2"
}


# public ec2 name
variable "public_instance_name" {
  description = "name for public ec2 instance"
}

variable "key_pair_id" {
  description = "key pair id for ec2 instance"
  
}

variable "pub-sub" {
  description = "value for public subnet"
}

variable "security_sg_id" {
  description = "The ID of the security group."
  
}

variable "key_pair_name" {
  description = "this is the key pair name"
}