#create instance variable 
resource "aws_instance" "prvt_instance" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  count=1
  key_name = var.key_pair_name
  vpc_security_group_ids =  var.security_sg_id
  subnet_id = var.pvt_sub_id
  associate_public_ip_address = var.associate_private_ip_address
 

  tags = {
    Name = var.private_instance_name
  }
}