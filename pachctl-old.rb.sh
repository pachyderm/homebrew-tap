#!/bin/bash

cat <<EOF > ${FORMULA_FILENAME}
require "formula"
require "language/go"
require "erb"

class ${PACHCTL_CLASSNAME} < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v${VERSION}"

  on_macos do
    url "${MACOS_AMD64_URL}"
    sha256 "${MACOS_AMD64_SHA}"
  end

  on_linux do
    url "${LINUX_AMD64_URL}"
    sha256 "${LINUX_AMD64_SHA}"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
EOF
