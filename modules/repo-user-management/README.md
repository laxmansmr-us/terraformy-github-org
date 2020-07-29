The module `repo-user-managemenet` helps to achieve consistency around how:

* Teams creation for a repository
* Membership for admin and maintainers

We don't want to get a proliferation of different ways to onboard contributors
and to manage repositories in terms of access and permissions. This modules
helps to keep a consistent process that can be described as follow.

Every repository has two teams: `admin` and `maintainers`.

The admin has `admin` permission for the GitHub Repository itself. Maintainers
has `maintain` permission.

At the moment the repository creation is not part of this module.
