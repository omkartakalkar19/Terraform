
#security group resource

resource "aws_security_group" "omkar-sg" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags = {
    Name = var.sg_name
  }

  ingress {  # Inbound Rules
    from_port        = var.ssh_from_port
    to_port          = var.ssh_to_port
    protocol         = var.ssh_protocol
    cidr_blocks      = var.sg_ssh_cidr
  }

  ingress {
    from_port        = var.jenkins_from_port
    to_port          = var.jenkins_to_port
    protocol         = var.jenkins_protocol
    cidr_blocks      = var.sg_jenkins_cidr
  }

  ingress {
    from_port        = var.sonar_from_port
    to_port          = var.sonar_to_port
    protocol         = var.sonar_protocol
    cidr_blocks      = var.sg_sonar_cidr
  }

  egress { # Outbound Rule
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.egress_protocol
    cidr_blocks      = var.sg_egress_cidr
  }
}
