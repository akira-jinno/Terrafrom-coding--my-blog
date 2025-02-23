output "bucket_arn" {
  description = "S3バケットのARN"
  value       = aws_s3_bucket.this.arn
}
