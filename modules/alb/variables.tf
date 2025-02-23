variable "vpc_id" {
  description = "ALBを配置するVPCのID"
  type        = string
}

variable "subnet_ids" {
  description = "ALBを配置するサブネットのIDリスト"
  type        = list(string)
}

variable "certificate_arn" {
  description = "ALBに適用するACM証明書のARN"
  type        = string
}