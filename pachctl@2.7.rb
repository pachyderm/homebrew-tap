require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230626"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230626/pachctl_2.7.0-nightly.20230626_darwin_amd64.zip"
    sha256 "8d33c16bd289d8d309b8b175b1fc9b094f20e62a747b2c22778f789dddc6bc7d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230626/pachctl_2.7.0-nightly.20230626_darwin_arm64.zip"
    sha256 "82d1885a7d91bf8269b1f5566d8fb7463085df05b796d3564e938903ec2f0457"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
