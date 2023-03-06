require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.1/pachctl_2.5.1_darwin_amd64.zip"
    sha256 "631430b2dcd940245013ea22e873ae652e05e209f633d144e57f989a6cd29b05"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.1/pachctl_2.5.1_darwin_arm64.zip"
    sha256 "b88e6b0bff3bf7fb5b20888d51a33fc697b596a29faacf7deb62c19dacf64625"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
