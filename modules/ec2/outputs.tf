output "instance_id" {
  description = "EC2インスタンスのID"
  value       = aws_instance.this.id
}

output "elastic_ip" {
  description = "Elastic IPアドレス"
  value       = aws_eip.this.public_ip
}
