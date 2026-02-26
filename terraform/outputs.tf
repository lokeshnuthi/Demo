output "instance_public_ip" {
  value = aws_instance.demo1.public_ip
}

output "instance_id" {
  value = aws_instance.demo1.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}