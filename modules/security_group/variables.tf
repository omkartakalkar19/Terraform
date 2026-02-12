
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

variable "vpc_id" {
    description = "vpc id for security group"   
  
}