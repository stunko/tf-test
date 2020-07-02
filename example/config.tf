terraform {
  backend "remote" {
    hostname = "813c74683b35.test-env.scalr.com"
    organization = "org-sgpvfvrkj5ao2j0"
    workspaces {
      name = "ws"
    }
  }
}
