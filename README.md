# :white_check_mark: add pull request comment github action

A GitHub action to post an issue comment on a pull request

## Usage
```yaml
name: comment on pr

on:
  pull_request:
    branches:
      - master

jobs:
  comment_pr:
    runs-on: ubuntu-latest
    steps:
      - name: comment pr
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}  # this is added for you by default
        uses: nickatnight/add-pr-comment-action@master
        with:
          body: "Your code is :poop:"
```

## Acknowledgements
- [halik](https://github.com/ironhalik) - for README template and alpine hacks
