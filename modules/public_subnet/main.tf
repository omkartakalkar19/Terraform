#public subnet

resource "aws_subnet" "omkar-pub-subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_subnet_cidr_block
  availability_zone = var.public_subnet_az

  tags = {
    Name = var.public_subnet_name
  }
}
