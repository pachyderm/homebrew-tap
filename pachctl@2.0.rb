require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.10/pachctl_2.0.0-alpha.10_darwin_amd64.zip"
  sha256 "61920873fae25094e2ac049afe925418e5eac648001a3a0175ddf07139d5b254"
  version "v2.0.0-alpha.10"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
