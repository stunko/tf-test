resource "random_pet" "name" {
  length = 18
  prefix = "tf"
  separator = "-"
}

