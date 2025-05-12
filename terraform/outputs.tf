output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = aws_lb.alb.dns_name
}
output "private_key_pem" {
  value     = tls_private_key.ssh_key.private_key_pem
  sensitive = true
}
output "ec2_public_ip" {
  value = aws_instance.ec2.public_ip
}

output "ec2_public_ip" {
  value = aws_eip.static_ip.public_ip
}
