

#call child module vpc 

module "vpc" {
    source = "../modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    vpc_instance_tendency = var.vpc_instance_tendency  
    vpc_name = var.vpc_name
  
}

#call child module subnet

module "public_subnet" {
    source = "../modules/public_subnet"
    public_subnet_cidr_block = var.public_subnet_cidr_block
    public_subnet_az = var.public_subnet_az
    public_subnet_name = var.public_subnet_name
    vpc_id = module.vpc.vpc_id
  
}

#call child module private subnet
module "private_subnet" {
    source = "../modules/private_subnet"
    private_subnet_cidr_block = var.private_subnet_cidr_block
    private_subnet_az = var.private_subnet_az
    private_subnet_name = var.private_subnet_name
    vpc_id = module.vpc.vpc_id
  
}

#call child module igw

module "igw" {
    source = "../modules/igw"
    aws_gateway_name = var.aws_gateway_name
    vpc_id = module.vpc.vpc_id
  
}

#call child module public route

module "public_route_table" {
    source = "../modules/public_route_table"
    public_route_cidr_block = var.public_route_cidr_block
    public_route_name = var.public_route_name
    vpc_id = module.vpc.vpc_id
    igw_id = module.igw.igw_id
  
}

#call child module public association route
module "public_association_route" {
    source = "../modules/public_association_route"
    pub_route_id = module.public_route_table.pub_route_id
    pub-sub = module.public_subnet.pub-sub
  
}

#call child module elastic ip address
module "elastic_ip_address" {
    source = "../modules/elastic_ip_address"
    elastic_ip_name = var.elastic_ip_name

}

#call child module nat gateway

module "nat_gateway" {
    source = "../modules/nat_gateway"
    aws_nat_gateway_name = var.aws_nat_gateway_name
    elastic_ip_id = module.elastic_ip_address.elastic_ip_id
    pvt_sub_id = module.private_subnet.pvt_sub_id
  
}

#call child module private route table

module "private_route_table" {
    source = "../modules/private_route_table"
    private_route_cidr_block = var.private_route_cidr_block
    private_route_name = var.private_route_name
    vpc_id = module.vpc.vpc_id
    igw_id = module.igw.igw_id
  
}

#call child module private association route
module "private_association_route" {
    source = "../modules/private_association_route"
    pvt_sub_id = module.private_subnet.pvt_sub_id   
    private_route-table_id = module.private_route_table.private_route-table_id

}


#call child module security group

module "security_group" {
    source = "../modules/security_group"
    sg_name = var.sg_name
    sg_description = var.sg_description
    vpc_id = module.vpc.vpc_id
    ssh_from_port = var.ssh_from_port
    ssh_to_port = var.ssh_to_port 
    ssh_protocol = var.ssh_protocol
    sg_ssh_cidr = var.sg_ssh_cidr
    jenkins_from_port = var.jenkins_from_port
    jenkins_to_port = var.jenkins_to_port
    jenkins_protocol = var.jenkins_protocol
    sg_jenkins_cidr = var.sg_jenkins_cidr
    sonar_from_port = var.sonar_from_port
    sonar_to_port = var.sonar_to_port
    sonar_protocol = var.sonar_protocol
    sg_sonar_cidr = var.sg_sonar_cidr
    egress_from_port = var.egress_from_port
    egress_to_port = var.egress_to_port
    egress_protocol = var.egress_protocol
    sg_egress_cidr = var.sg_egress_cidr
}

#call child module key pair
module "key_pair" {
    source = "../modules/key_pair"
    key_pair_name = var.key_pair_name
    key_pair_public_key = var.key_pair_public_key
  
}

#call child module public instance
module "public_instance" {
    source = "../modules/public_instance"
    ec2_ami = var.ec2_ami
    ec2_instance_type = var.ec2_instance_type
    key_pair_id = module.key_pair.key_pair_id
    key_pair_name = var.key_pair_name
    public_instance_name = var.public_instance_name
    associate_public_ip_address = var.associate_public_ip_address
    security_sg_id = [ module.security_group.security_sg_id]    
    pub-sub = module.public_subnet.pub-sub
    
}

#call child module private instance
module "private_instance" {
    source = "../modules/private_instance"
    ec2_ami = var.ec2_ami
    ec2_instance_type = var.ec2_instance_type
    key_pair_id = module.key_pair.key_pair_id
    key_pair_name = var.key_pair_name
    private_instance_name = var.private_instance_name
    associate_private_ip_address = var.associate_private_ip_address
    security_sg_id = [ module.security_group.security_sg_id]    
    pvt_sub_id = module.private_subnet.pvt_sub_id
}