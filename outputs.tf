output "vpc_id" {
  description = "作成したVPCのID"
  value       = module.vpc.vpc_id
}

# output "ec2_public_ip" {
#   description = "EC2インスタンスのパブリックIP"
#   value       = module.ec2.public_ip
# }

output "alb_dns_name" {
  description = "ALBのDNS名"
  value       = module.alb.alb_dns_name
}

output "s3_bucket_arn" {
  description = "S3バケットのARN"
  value       = module.s3.bucket_arn
}

output "ec2_public_ip" {
  description = "EC2インスタンスのElastic IP"
  value       = module.ec2.elastic_ip
}
