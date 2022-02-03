require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.7/pachctl_2.0.7_darwin_amd64.zip"
  sha256 "f8a0e01305290f005fc3a6ca9ca7458a069310672cf32fe60f2c9065f9b34cf8"
  version "v2.0.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
