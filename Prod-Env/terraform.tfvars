#vpc variables

vpc_cidr_block = "10.0.0.0/16"
vpc_instance_tendency = "default"
vpc_name = "prod-env-omkar-vpc"


#public subnet variables

public_subnet_cidr_block = "10.0.1.0/24"
public_subnet_az = "ap-south-1a"
public_subnet_name = "prod-env-omkar-public-subnet"


#private subnet variables

private_subnet_cidr_block = "10.0.3.0/24"
private_subnet_az = "ap-south-1b"
private_subnet_name = "prod-env-omkar-private-subnet"


#aws gateway name

aws_gateway_name = "prod-env-omkar-igw"

#public route variables

public_route_cidr_block = "0.0.0.0/0"
public_route_name = "prod-env-omkar-pub-rt"

#elastic ip name

elastic_ip_name = "prod-env-omkar-eip"

#aws nat gateway name

aws_nat_gateway_name = "prod-env-omkar-gw-NAT"



#private route variables

private_route_cidr_block = "0.0.0.0/0"
private_route_name = "prod-env-omkar-prvt-rt"


#key value variables
key_pair_name = "omkar-pair"
key_pair_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8Vn3mImq5q6FH5TgoikNAo2qzbg/lJQIuqw8UI2lJyaAiwdAP7LtO5jEZvBSeqjeJXGM70ypb4Y3ge48fUKw/dxVNNCYcRsTmaGXVeVobF0x8rEXqIH16+hZuXNcHsYCU2e48dYT7NMWLfuCyz5/expD21i/fHmyqRNViXVx1inMErtao7c/jMdR7HX0tLTZAQWsZ7ycImLAhHF/FYfieHeeQwOdJdVTcmGsT0x+ZtTgV5AhO+zr3/8VuKefO1bqsipJgQ+evwl+W5t/Cwawut6O64s2pnLl2ilEgdxHsCBUP2QgUxEm2/7y+XTHnlxBTlugI8tu5HlyME9w1wqh7W5ytgbHx6A3D58dOJdHdpy6ROJHN7pDAycUgQ+nHI7yxHGqeUXMmeU/iEcoryVwYvcX4QS2lEJAlmUuFtaqwz0iqRjMAkBuwdhsoBHaHV6QayE3cKzLtxM2mKPNXP4nqq3V5MEUjhdYyUmhtlkGijhxwu0nkPH8XsboIlMrFmOBX7BaFVtyyO7fnH6UirDnnayRv1m5JHVOjmmF10ib0rNsEnt2Y5DOZp5UNjP/6cfXTz6v1QN5/Hf07kzh3sOUf9RBp5HatEtZ7ElpPrhTSdQF0dn9eXaHPwQrxhT0e5LxahGlAZTg7YO62uV/EGPFatP3ugaOBStNohsRFziHGzw== dhanr@MSI"


#security group variables

sg_name = "prod-env-omkar-sg"
sg_description = "Allow TLS inbound traffic and all outbound traffic"

ssh_from_port = 22
ssh_to_port = 22
ssh_protocol = "tcp"
sg_ssh_cidr = ["0.0.0.0/0"]

jenkins_from_port = 8080
jenkins_to_port = 8080
jenkins_protocol = "tcp"
sg_jenkins_cidr = ["0.0.0.0/0"]

sonar_from_port = 9000
sonar_to_port = 9000
sonar_protocol = "tcp"
sg_sonar_cidr = ["0.0.0.0/0"]

egress_from_port = 0
egress_to_port = 0
egress_protocol = "-1"
sg_egress_cidr = ["0.0.0.0/0"]


#ec2 instance variables

ec2_ami = "ami-019715e0d74f695be"
ec2_instance_type = "t3.micro"

public_instance_name = "prod-env-omkar-public-instance"
private_instance_name = "prod-env-omkar-private-instance"

associate_public_ip_address = true
associate_private_ip_address = false


dev_env_region = "ap-south-1"