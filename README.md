# homebrew-tap
Place for homebrew formula to live


# Release Instructions:

- [find the tag/release on github you want to release](https://github.com/pachyderm/pachyderm/releases)
  - CI needs to pass
  - and it needs to be merged into master to generate a tag
- make sure on GH its marked as a release
- grab the tar url from GH. e.g. https://github.com/pachyderm/pachyderm/archive/v1.0.0(365).tar.gz
- Update the `url` in `pachctl.rb` to this tar URL
- Update the version field manually in `pachctl.rb`
- Update the SHA
  - Run the following:

```shell
$ curl -L -o latest_tarball https://github.com/pachyderm/pachyderm/archive/v1.0.0(494).tar.gz
$ sha256sum latest_tarball | cut -f 1 -d " "
```

  - Put that new sha value into the `sha` field in `pachctl.rb`
- commit this repo & push

# Test the release:

    brew tap pachyderm/tap
    brew uninstall pachctl
    brew install pachctl
    pachctl version
    # <= should report the version you just released
