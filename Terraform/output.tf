output "ec2_public_ip" {
  value = aws_instance.wanderlust.public_ip
}

output "ec2_id" {
  value = aws_instance.wanderlust.id
}

output "vpc_id" {
  value = aws_vpc.main_vpc.id
}
