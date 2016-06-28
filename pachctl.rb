require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX19/pachctl_1.0.1-RCX19_darwin_amd64.zip"
  sha256 "d96a526dfeea7cf52a2356ea7781e1c40abb363c2599645558f43bd4fc0faaec"
  version "v1.0.1-RCX19"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
