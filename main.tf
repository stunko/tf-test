resource "random_string" "random" {
  length = var.length
  special = true
  upper = true
  min_upper = var.min_upper
  min_numeric = var.min_numeric
  number = true
  override_special = "/@£$"
}
