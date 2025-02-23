variable "ami_id" {
  description = "EC2で利用するAMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2のインスタンスタイプ"
  type        = string
}

# スポットインスタンス用の最大入札価格（USD）
variable "spot_price" {
  description = "スポットインスタンスの最大入札価格 (USD)"
  type        = string
  default     = "0.005"  # 必要に応じて調整してください
}

variable "subnet_id" {
  description = "EC2を配置するサブネットのID"
  type        = string
}
