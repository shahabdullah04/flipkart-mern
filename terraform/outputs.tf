output "instance_public_ip" {
  description = "Public IP of the EC2 instance."
  value       = aws_instance.app_server.public_ip
}

output "instance_public_dns" {
  description = "Public DNS of the EC2 instance."
  value       = aws_instance.app_server.public_dns
}

output "instance_id" {
  description = "EC2 instance ID."
  value       = aws_instance.app_server.id
}

output "vpc_id" {
  description = "VPC ID."
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public subnet ID."
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "Security group ID for the EC2 instance."
  value       = aws_security_group.ec2.id
}
