output "instance_state" {
  description = "The state of the instance."
  value = aws_instance.default.instance_state
}

output "volume_id" {
  description = "The state of the instance."
  value = aws_ebs_volume.default.id
}
