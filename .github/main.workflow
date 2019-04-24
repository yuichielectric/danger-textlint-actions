workflow "New workflow" {
  resolves = "danger"
  on = "pull_request"
}

action "danger" {
  uses = "./"
  secrets = ["GITHUB_TOKEN"]
}
