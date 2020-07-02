
provider "scalr" {
}

resource scalr_workspace test {
  name              = "stunko2"
  organization      = "org-sgpvfvrkj5ao2j0"
  auto_apply        = "true"
  terraform_version = "0.12.19"
}

data scalr_workspace test {
  name         = "${scalr_workspace.test.name}"
  organization = "org-sgpvfvrkj5ao2j0"
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
