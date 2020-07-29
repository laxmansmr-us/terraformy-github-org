module "members" {
  source = "./modules/members"
  admins = []
  members = []
}

module "osie-teams" {
  source = "./modules/repo-user-management"

  admins = [""]
  maintainers = [""]
}
