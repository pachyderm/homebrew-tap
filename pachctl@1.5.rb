require "formula"
require "language/go"
require 'erb'


class PachctlAT15 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.5.3/pachctl_1.5.3_darwin_amd64.zip"
  sha256 "0b97c9f4cd18c47810678ecaa2b358ba5febc551576846607874813600a61c2c"
  version "v1.5.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
