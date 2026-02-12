#nat gateway(must be in public subnet)
resource "aws_nat_gateway" "gw-nat" {
  allocation_id = var.elastic_ip_id
  subnet_id     = var.pvt_sub_id

  tags = {
    Name = var.aws_nat_gateway_name
  }
}

