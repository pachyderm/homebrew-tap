require "formula"
require "language/go"
require 'erb'


class PachctlAT15 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.5.0/pachctl_1.5.0_darwin_amd64.zip"
  sha256 "a437498662d2e856ac7f5a8f689bccdde794a9a1246f1ce424ad99f1b0567303"
  version "v1.5.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
