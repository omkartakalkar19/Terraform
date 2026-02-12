#create instance variable 
resource "aws_instance" "pub_instance" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  count=1
  key_name = var.key_pair_name
  vpc_security_group_ids =  var.security_sg_id
  subnet_id = var.pub-sub
  associate_public_ip_address = var.associate_public_ip_address
 

  tags = {
    Name = var.public_instance_name
  }
}