require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.7/pachctl_1.9.7_darwin_amd64.zip"
  sha256 "e26c1686e0d3b82c1999410ef937c5036a043e87a2a3854f370c6728c0fef84e"
  version "v1.9.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
