variable "instance_id" {
  description = "監視するEC2のインスタンスID"
  type        = string
}

variable "alarm_name" {
  description = "CloudWatch アラーム名"
  type        = string
}

variable "cpu_threshold" {
  description = "CPU使用率の閾値 (%)"
  type        = number
  default     = 80
}

variable "sns_topic_name" {
  description = "SNSトピック名"
  type        = string
  default     = "ec2-alerts"
}

variable "notification_email" {
  description = "通知先のメールアドレス"
  type        = string
}
