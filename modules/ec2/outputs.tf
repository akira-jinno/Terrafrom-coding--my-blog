# output "instance_id" {
#   description = "EC2インスタンスのID"
#   value       = aws_instance.this.id
# }

# output "public_ip" {
#   description = "EC2インスタンスのパブリックIP"
#   value       = aws_instance.this.public_ip
# }

output "instance_id" {
  description = "EC2インスタンスのID"
  value       = aws_instance.this.id
}

output "elastic_ip" {
  description = "Elastic IPアドレス"
  value       = aws_eip.this.public_ip
}
