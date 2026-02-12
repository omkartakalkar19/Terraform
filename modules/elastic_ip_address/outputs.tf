output "elastic_ip_id" {
    description = "This is elastic ip address id "
    value = aws_eip.lb.id
  
}