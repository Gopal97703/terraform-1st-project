output "ec2_public_ip" {
  value = aws_instance.ec2-1.public_ip
}

output "ec2_public_ip-2" {
  value = aws_instance.ec2-2.public_ip
}

output "my_alb_dns" {
  value = aws_lb.my_alb.dns_name
}