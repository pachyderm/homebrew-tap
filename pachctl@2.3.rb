require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-alpha.6"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.6/pachctl_2.3.0-alpha.6_darwin_amd64.zip"
    sha256 "6bb43c397504fac03f7c06a7bfd53f1966265282127d1f3a039cc2460901943f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.6/pachctl_2.3.0-alpha.6_darwin_arm64.zip"
    sha256 "b09657a009ae67b8ef4402f38ec05b7830b9d8a6ed8b631f7617918f94ec1a28"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
