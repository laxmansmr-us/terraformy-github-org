variable "repository_name" {
  type = string
}

variable "admins" {
  type    = list(string)
}

variable "maintainers" {
  type    = list(string)
}
