require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0-rc3/pachctl_1.10.0-rc3_darwin_amd64.zip"
  sha256 "f66119135aa2cd633d7cdac841a37b11e783c4a9c487313f0d8466fcd9903636"
  version "v1.10.0-rc3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
