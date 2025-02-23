output "vpc_id" {
  description = "VPCのID"
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "作成したパブリックサブネットのIDリスト"
  value       = aws_subnet.public[*].id
}

output "public_subnet_id" {
  description = "利用するパブリックサブネット（先頭の1件）"
  value       = aws_subnet.public[0].id
}
