# danger-textlint-actions

This GitHub Action submits textlint review comments if there are violations.

<img src="https://github.com/yuichielectric/danger-textlint-actions/blob/master/assets/screenshot.png?raw=true" alt="">

## Sample repository

Here is the [sample repository](https://github.com/yuichielectric/danger-textlint-actions-demo) I've set up the automation.

## Set up

To set up the textlint, you need to

1. set up textlint
2. set up workflow

### 1. Set up textlint

To set up textlint, we need `package.json`, `Dangerfile` and `.textlintrc`. Here are the examples:

#### package.json

```json
{
  "name": "danger-textlint-actions-demo",
  "version": "1.0.0",
  "dependencies": {
    "textlint": "^11.2.3",
    "textlint-rule-preset-japanese": "^2.0.1"
  }
}
```

#### Dangerfile

```ruby
textlint.max_severity = "warn"
textlint.lint
```

#### .textlintrc

```json
{
  "filters": {},
  "rules": {
    "preset-japanese": true
  }
}
```

### 2. Set up workflow

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
