require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221109"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221109/pachctl_2.5.0-nightly.20221109_darwin_amd64.zip"
    sha256 "85f7ac3624f9776cbf475bb969bf41a89491181af6f4c869b2a22bc6ca0fd11f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221109/pachctl_2.5.0-nightly.20221109_darwin_arm64.zip"
    sha256 "2a1bfbf3a7873621857c1dbd84eaea0ed6d916b83916260b36b11c6ac1af3afa"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
