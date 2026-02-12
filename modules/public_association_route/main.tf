# associate public subnet with public route table
resource "aws_route_table_association" "a" {
  subnet_id      = var.pub-sub
  route_table_id = var.pub_route_id
}