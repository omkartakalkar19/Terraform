
#public route table

resource "aws_route_table" "pub-rt" {
  vpc_id= var.vpc_id

  route {
    cidr_block = var.public_route_cidr_block
    gateway_id = var.igw_id
  }

  tags = {
    Name = var.public_route_name
  }
}
