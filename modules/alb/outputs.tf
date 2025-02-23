output "alb_dns_name" {
  description = "ALBのDNS名"
  value       = aws_lb.this.dns_name
}

output "alb_zone_id" {
  description = "ALBのゾーンID"
  value       = aws_lb.this.zone_id
}