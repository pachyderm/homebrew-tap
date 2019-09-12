require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.8/pachctl_1.8.8_darwin_amd64.zip"
  sha256 "1828dbef8c8849b29d87041f28fd384b14aeaf05b8adb8964ad04f991b2a7358"
  version "v1.8.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
