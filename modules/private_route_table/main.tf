#private route table

resource "aws_route_table" "pvrt-rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.private_route_cidr_block
    gateway_id = var.igw_id
  }

  tags = {
    Name = var.private_route_name
  }
}
