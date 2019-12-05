require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.9/pachctl_1.9.9_darwin_amd64.zip"
  sha256 "0cce09148c1b3b09725df15782f5721c0df66fd93c231c0ad0555e155344ee9e"
  version "v1.9.9"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
