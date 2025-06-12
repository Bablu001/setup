resource "aws_instance" "web" {
  ami                         = "ami-0e35ddab05955cf57"
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public[0].id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "DevOps-EC2"
  }
}
