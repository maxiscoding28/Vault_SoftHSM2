output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.vault-softhsm.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_eip.ip-vault-softhsm.public_ip
}
