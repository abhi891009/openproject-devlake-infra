
resource "aws_instance" "main" {
  ami           = "ami-084568db4383264d4"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main.id
  key_name      = var.key_name
  security_groups = [aws_security_group.ec2_sg.name]

  user_data = file("${path.module}/user_data/install.sh")

  tags = {
    Name = "openproject-devlake-instance"
  }
}
