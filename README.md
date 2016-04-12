# homebrew-tap
Place for homebrew formula to live


# Release Instructions:

- [find the tag/release on github you want to release](https://github.com/pachyderm/pachyderm/releases)
  - CI needs to pass
  - and it needs to be merged into master to generate a tag
- make sure on GH its marked as a release
- grab the tar url from GH. e.g. https://github.com/pachyderm/pachyderm/archive/v1.0.365.tar.gz
- update the `url` in `pachctl.rb` to this tar URL
- run the install command locally, you'll see a warning about the sha mismatch
- plug in the new reported sha value for the `sha` field in `pachctl.rb`
- commit this repo & push

# Test the release:

    brew uninstall pachctl
    brew install pachctl
    pachctl version
    # <= should report the version you just released

You may need to run the `brew tap pachyderm/tap` command if it cannot find the formula. That points brew at this repo to look for the formula.