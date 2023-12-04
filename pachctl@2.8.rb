require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.1/pachctl_2.8.1_darwin_amd64.zip"
    sha256 "84cb8051d5ccd1de6634d333df751f1463e10326b774ac5bc2d0f85c65fed489"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.1/pachctl_2.8.1_darwin_arm64.zip"
    sha256 "3387eb4661df61644c63f7582a62c5ade0ba288c833a2247a9d907ec7dcd2c5e"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
