
# associate private subnet with public route table
resource "aws_route_table_association" "private_assoc" {
  subnet_id      = var.pvt_sub_id
  route_table_id = var.private_route-table_id
}
