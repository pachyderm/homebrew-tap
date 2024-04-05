#!/bin/bash

cat <<EOF > ${FORMULA_FILENAME}
require "formula"
require "language/go"
require 'erb'

class ${PACHCTL_CLASSNAME} < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v${VERSION}"

  on_macos do
    on_arm do
      url "${MACOS_ARM64_URL}"
      sha256 "${MACOS_ARM64_SHA}"
    end

    on_intel do
      url "${MACOS_AMD64_URL}"
      sha256 "${MACOS_AMD64_SHA}"
    end
  end

  on_linux do
    on_arm do
      url "${LINUX_ARM64_URL}"
      sha256 "${LINUX_ARM64_SHA}"
    end

    on_intel do
      url "${LINUX_AMD64_URL}"
      sha256 "${LINUX_AMD64_SHA}"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
EOF
