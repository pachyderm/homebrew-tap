#!/bin/bash

# Full URL looks like this:
# https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-dirty/pachctl_v1.0.1-dirty_darwin_amd64.zip
GITHUB_HOSTING_ROOT=https://github.com/pachyderm/pachyderm/releases/download
MACOS="darwin"
LINUX="linux"
ARM64="arm64"
AMD64="amd64"
ZIP=".zip"
TGZ=".tar.gz"

MACOS_AMD64_BIN_SUFFIX="_${MACOS}_${AMD64}${ZIP}"
MACOS_ARM64_BIN_SUFFIX="_${MACOS}_${ARM64}${ZIP}"
LINUX_AMD64_BIN_SUFFIX="_${LINUX}_${AMD64}${TGZ}"
LINUX_ARM64_BIN_SUFFIX="_${LINUX}_${ARM64}${TGZ}"

# e.g. convert from 1.3.4 -> 1.3
MAJOR_MINOR=`echo $VERSION | cut -f -2 -d "."`
# e.g. convert from 1.3 -> 13
MAJOR_MINOR_SQUASHED=`echo $MAJOR_MINOR | sed 's/\.//g'`

# run the old script for anything prior to 2.3.x
if [[ $MAJOR_MINOR_SQUASHED -lt 23 ]]; then
  ./update-formula-old.sh
  exit 0
fi

export URL_PREFIX="${GITHUB_HOSTING_ROOT}/v${VERSION}/pachctl_${VERSION}"

export MACOS_ARM64_URL="${URL_PREFIX}${MACOS_ARM64_BIN_SUFFIX}"
export MACOS_AMD64_URL="${URL_PREFIX}${MACOS_AMD64_BIN_SUFFIX}"
export LINUX_ARM64_URL="${URL_PREFIX}${LINUX_ARM64_BIN_SUFFIX}"
export LINUX_AMD64_URL="${URL_PREFIX}${LINUX_AMD64_BIN_SUFFIX}"

# This should check for errors.
export MACOS_ARM64_SHA=$(curl -Ls $MACOS_ARM64_URL | sha256sum | cut -d' ' -f 1)
export MACOS_AMD64_SHA=$(curl -Ls $MACOS_AMD64_URL | sha256sum | cut -d' ' -f 1)
export LINUX_ARM64_SHA=$(curl -Ls $LINUX_ARM64_URL | sha256sum | cut -d' ' -f 1)
export LINUX_AMD64_SHA=$(curl -Ls $LINUX_AMD64_URL | sha256sum | cut -d' ' -f 1)

export PACHCTL_CLASSNAME="PachctlAT${MAJOR_MINOR_SQUASHED}"

export FORMULA_FILENAME="pachctl@${MAJOR_MINOR}.rb"

# The following script is just a HEREDOC catted to a file, to use Bash's
# variable interpolation functionality as a basic templating system.
/bin/bash pachctl.rb.sh
