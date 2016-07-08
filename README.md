# homebrew-tap
Place for homebrew formula to live

For now, we assume the make tasks that are run to release are run on linux (because of silly inconsistency w sed)

# Release Instructions:

From now on, releases should be done via the automated release script. To run the script, see [these instructions](https://github.com/pachyderm/pachyderm/blob/master/doc/release_instructions.md)

# Test the release:

    brew untap pachyderm/tap
    brew tap pachyderm/tap
    brew uninstall pachctl
    brew install pachctl
    pachctl version
    # <= should report the version you just released
