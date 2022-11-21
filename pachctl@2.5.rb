require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221121"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221121/pachctl_2.5.0-nightly.20221121_darwin_amd64.zip"
    sha256 "f8ba40d3e83d0f4ad3935e3e6c9572627edb64b10fb2c817d437d813ad15e6de"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221121/pachctl_2.5.0-nightly.20221121_darwin_arm64.zip"
    sha256 "075dc39ae648ac2c792a8f4020c1cd0cda73850c2cfef266e01b0f95ce10d0bc"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
