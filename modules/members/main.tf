resource "github_team_membership" "members" {
  for_each      = var.members

  username = "${each.value}"
  role = "member"
}

resource "github_team_membership" "admin" {
  for_each      = var.members

  username = "${each.value}"
  role = "admin"
}
