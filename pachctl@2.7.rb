require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230620"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230620/pachctl_2.7.0-nightly.20230620_darwin_amd64.zip"
    sha256 "6db9dd2266efdfac379e59ff3f5ce33f3d3c304f66361c51894ecc5300c27ca3"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230620/pachctl_2.7.0-nightly.20230620_darwin_arm64.zip"
    sha256 "74093b739b0c119be03f4232eead7c542db9a000b8e0d4aea4001d80628a5b95"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
