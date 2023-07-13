require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.6"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.6/pachctl_2.6.6_darwin_amd64.zip"
    sha256 "4e4e2207248c9136eb37cc9e3434243e89db7a54e58f249e2066950a30f029e7"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.6/pachctl_2.6.6_darwin_arm64.zip"
    sha256 "4ada09f078d03dd5e46cd509f1e18abfe9cba0c7d211f298a91ab35e7a802831"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
