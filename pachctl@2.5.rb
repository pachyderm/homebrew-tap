require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221122"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221122/pachctl_2.5.0-nightly.20221122_darwin_amd64.zip"
    sha256 "45435e2c5ab38ae6d85a7de4713dfc80b279096bf36552c19270ad95ab4e59fa"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221122/pachctl_2.5.0-nightly.20221122_darwin_arm64.zip"
    sha256 "e78b7c7483151ad18aefa87e67427aeff9b7d4cf56b8e89767214e8852c3cf61"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
