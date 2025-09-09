/*
This configuration will create  EC2 instances
on AWS provider
*/
resource "aws_instance" "web" {
  ami                         = var.ami_id #Ubuntu 20.04 LTS Free Tier Image
  instance_type               = var.inst_type
  key_name                    = "terraform_demo"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.kalyan_sg.id]
  user_data                   = file("nginx-install.sh")
  availability_zone           = var.az_name
  associate_public_ip_address = true

  tags = local.common_tags
}
