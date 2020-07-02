
provider "scalr" {
  hostname = var.hostname
  token    = var.api_token
}

resource scalr_workspace test {
  name              = "stunkoptest"
  organization      = "org-sgpvfvrkj5ao2j0"
  auto_apply        = "true"
  terraform_version = "0.12.19"
}

output workspace_user_email {
  value = "${scalr_workspace.test.created_by.0.email}"
}

output workspace_user_name {
  value = "${scalr_workspace.test.created_by.0.username}"
}
output workspace_full_name {
  value = "${scalr_workspace.test.created_by.0.full_name}"
}
