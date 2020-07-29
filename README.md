This repository is the "infrastructure as code" for GitHub organization. Let's
call it "GitHub Org as code".

It is managed via Terraform and the Terraform GitHub provider.

`main.tf` is the entry point for what gets created/destroyed/modified by
terraform.

The `modules` directories contains the reusable modules we created to achieve
consistency for common tasks like: user management and teams.
Every module has its own README that you can reference to for documentation.

## Why

This repository is designed to automate and share the effort of organization
management. If you are trying to do one of the following things you are in the
right place:

* Create a new repository
* Invite a new member
* Assign a member to a team
* Create a new team
* Assign labels to a repository

Ideally every change in GitHub should be made here and not directly via UI/API.
This process improves stability and safety because a reviewers for this repo makes the
last call on what can be done or not. It increases consistency, action are
tracked and applies automatically via Terraform Cloud when a PR gets merged.

To support a growing organization we need a way to empower maintainers,
contributors to do what they need by themself, leaving pressure out from
potential lock holder. Opening a PR is a good way to achieve this goal not
leaving safety because we have code reviewers and we are developing trust on a
repeatable workflow shared and publicly available.

## How to contribute

You can open a PR proposing your change. A maintainer for this repository will
review and merge. From there Terraform Cloud will take care of applying the
change to the GitHub organization.
