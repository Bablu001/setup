resource "aws_instance" "wanderlust" {
  ami                         = "ami-007020fd9c84e18c7"  # Ubuntu 22.04 LTS in ap-south-1
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public[0].id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y software-properties-common
              add-apt-repository --yes --update ppa:ansible/ansible
              apt install -y ansible
              systemctl enable --now ssh
              ansible --version > /tmp/ansible_version.txt
              EOF

  tags = {
    Name = "wanderlust"
  }
}