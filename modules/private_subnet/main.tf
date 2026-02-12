

#private subnet

resource "aws_subnet" "omkar-prvt-subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet_cidr_block
  availability_zone = var.private_subnet_az
  tags = {
    Name = var.private_subnet_name
  }
}