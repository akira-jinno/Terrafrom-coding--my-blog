output "cloudwatch_alarm_arn" {
  description = "CloudWatchアラームのARN"
  value       = aws_cloudwatch_metric_alarm.high_cpu.arn
}

output "sns_topic_arn" {
  description = "SNSトピックのARN"
  value       = aws_sns_topic.alerts.arn
}
