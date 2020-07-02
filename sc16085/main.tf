
provider "scalr" {
}

resource scalr_workspace test {
  name              = "test-ws2"
  organization      = "existing-org"
  auto_apply        = "true"
  terraform_version = "0.12.19"
}

data scalr_workspace test {
  name         = "${scalr_workspace.test.name}"
  organization = "existing-org"
}

output workspace_user_email {
  value = "${data.scalr_workspace.test.created_by.0.email}"
}

output workspace_user_name {
  value = "${data.scalr_workspace.test.created_by.0.username}"
}
output workspace_full_name {
  value = "${data.scalr_workspace.test.created_by.0.full_name}"
}
