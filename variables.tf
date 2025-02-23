variable "region" {
  description = "AWSリージョン"
  type        = string
  default     = "ap-northeast-1"
}

variable "vpc_cidr" {
  description = "VPCのCIDRブロック"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ami_id" {
  description = "EC2用のAMI ID（既存のブログイメージをAMI化して指定）"
  type        = string
}

variable "instance_type" {
  description = "EC2のインスタンスタイプ"
  type        = string
  default     = "t2.micro"
}

variable "bucket_name" {
  description = "S3バケットの名前"
  type        = string
  default     = "tf-coding-my-blog-bucket"
}
