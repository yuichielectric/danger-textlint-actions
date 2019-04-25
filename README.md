# danger-textlint-actions

This GitHub Action submits textlint review comments if there are violations.

<img src="https://github.com/yuichielectric/danger-textlint-actions/raw/master/asserts/screenshot.png" alt="" width="400">

To set up the textlint, you need to

1. set up textlint
2. set up workflow

## 1. Set up textlint


## 2. Set up workflow

An example workflow looks like this:

```workflow
workflow "textlint" {
  resolves = "danger"
  on = "pull_request"
}

action "npm install" {
  uses = "actions/npm@c555744"
  args = "install"
}

action "danger" {
  needs = ["npm install"]
  uses = "yuichielectric/danger-textlint-actions@master"
  secrets = ["GITHUB_TOKEN"]
}
```

## License

[MIT](LICENSE)
