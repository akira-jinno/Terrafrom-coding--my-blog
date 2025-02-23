variable "ami_id" {
  description = "EC2で利用するAMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2のインスタンスタイプ"
  type        = string
}

variable "subnet_id" {
  description = "EC2を配置するサブネットのID"
  type        = string
}
