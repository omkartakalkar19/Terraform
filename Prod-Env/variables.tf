#vpc variables

variable "vpc_cidr_block" {
    description = "THIS IS VPC CIDR BLOCK"
}

variable "vpc_instance_tendency" {
    description = "THIS IS VPC INSTANCE TENDENCy"
  
}

variable "vpc_name" {
    description = "THIS IS VPC NAME"
  
}



#public subnet variables

variable "public_subnet_cidr_block" {
    description = "THIS IS public subnet CIDR BLOCK"
  
}

variable "public_subnet_az" {
    description = "THIS IS public subnet availibilty zone"
  
}

variable "public_subnet_name" {
    description = "THIS IS public subnet NAME"
  
}


#private subnet variables

variable "private_subnet_cidr_block" {
    description = "THIS IS private subnet CIDR BLOCK"
  
}

variable "private_subnet_az" {
    description = "THIS IS private subnet availibilty zone"
  
}

variable "private_subnet_name" {
    description = "THIS IS private subnet NAME"
  
}




#aws gateway variables

variable "aws_gateway_name" {
    description = "THIS IS aws gateway NAME"
  
}


#public route table variable

variable "public_route_cidr_block" {
    description = "THIS IS public route CIDR BLOCK"
  
}

variable "public_route_name" {
    description = "THIS IS a public route NAME"
  
}


#elastic ip variables

variable "elastic_ip_name" {
    description = "THIS IS ELASTIC IP NAME"
  
}

#nat gateway variables

variable "aws_nat_gateway_name" {
    description = "THIS IS aws nat gateway NAME"
  
}




#private route table variable

variable "private_route_cidr_block" {
    description = "THIS IS private route CIDR BLOCK"
  
}

variable "private_route_name" {
    description = "THIS IS a private route NAME"
  
}
# key pair variable
variable "key_pair_name" {
  description = "this is the key pair name"
}
variable "key_pair_public_key" {
  description = "this is the key pair public key"
}


# security group variables

variable "sg_name" {
  description = "this is the security group name"
}

variable "sg_description" {
  description = "this is the security group description"
}

variable "sg_ssh_cidr" {
  description = "cidr allowed for ssh"
}

variable "sg_jenkins_cidr" {
  description = "cidr allowed for jenkins port 8080"
}

variable "sg_sonar_cidr" {
  description = "cidr allowed for sonarqube port 9000"
}

variable "sg_egress_cidr" {
  description = "cidr allowed for egress port"
}


# security group ports & protocol variables

variable "ssh_from_port" {
  description = "ssh from port"
}

variable "ssh_to_port" {
  description = "ssh to port"
}

variable "ssh_protocol" {
  description = "ssh protocol"
}

variable "jenkins_from_port" {
  description = "jenkins from port"
}

variable "jenkins_to_port" {
  description = "jenkins to port"
}

variable "jenkins_protocol" {
  description = "jenkins protocol"
}

variable "sonar_from_port" {
  description = "sonarqube from port"
}

variable "sonar_to_port" {
  description = "sonarqube to port"
}

variable "sonar_protocol" {
  description = "sonarqube protocol"
}


variable "egress_from_port" {
  description = "egress from port"
}

variable "egress_to_port" {
  description = "egress to port"
}

variable "egress_protocol" {
  description = "egress protocol"
}



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

# private ec2 name
variable "private_instance_name" {
  description = "name for private ec2 instance"
}

variable "associate_private_ip_address" {
    type = bool
    description = " associate_private_ip_address"
  
}

variable "dev_env_region" {
  description = "AWS region to deploy resources"
}