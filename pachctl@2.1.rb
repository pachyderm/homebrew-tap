require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.1/pachctl_2.1.1_darwin_amd64.zip"
  sha256 "3b9f0242f38d02b1ec7615f068a7efcc11298c15e858b41aeaa738f8a8f28ee9"
  version "v2.1.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
