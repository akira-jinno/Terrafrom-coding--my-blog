output "alb_dns_name" {
  description = "ALBのDNS名"
  value       = aws_lb.this.dns_name
}
