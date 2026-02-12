#elastic ip address

resource "aws_eip" "lb" {
  
  tags = {
    Name = var.elastic_ip_name
  }
}