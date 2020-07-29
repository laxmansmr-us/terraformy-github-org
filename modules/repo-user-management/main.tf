resource "github_team" "admin" {
  name = "${var.repository_name}-admin"
}

resource "github_team" "maintainers" {
  name = "${var.repository_name}-maintainers"
}

resource "github_team_membership" "admin" {
  for_each      = var.admins

  team_id = "${github_team.admin.id}"
  username = "${each.value}"
}

resource "github_team_membership" "maintainers" {
  for_each      = var.maintainers

  team_id = "${github_team.maintainers.id}"
  username = "${each.value}"
}

resource "github_team_repository" "maintainers-access" {
  team_id    = "${github_team.demo-team.slug}"
  repository = "${var.repository_name}"
  permission = "maintain"
}

resource "github_team_repository" "admin-access" {
  team_id    = "${github_team.demo-team.slug}"
  repository = "${var.repository_name}"
  permission = "admin"
}
