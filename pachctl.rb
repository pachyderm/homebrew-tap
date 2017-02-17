require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.8/pachctl_1.3.8_darwin_amd64.zip"
  sha256 "35c0e409e243e1b83fbde2687f36dc5e8142423cc996a8e6d95ade4d3e635814"
  version "v1.3.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
