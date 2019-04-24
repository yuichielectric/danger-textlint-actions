workflow "New workflow" {
  resolves = "danger"
  on = "pull_request"
}

action "npm install" {
  uses = "actions/npm@c555744"
  args = "install"
}

action "danger" {
  needs = ["npm install"]
  uses = "./"
  secrets = ["GITHUB_TOKEN"]
}
