require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230426"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230426/pachctl_2.6.0-nightly.20230426_darwin_amd64.zip"
    sha256 "0ea37c96c1333ad5feca94c0157df3374c73b290f03df0b0b98d75a77b57b895"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230426/pachctl_2.6.0-nightly.20230426_darwin_arm64.zip"
    sha256 "c2fa8c774e663f70e271c67372511b52610b0d0817f3cbda8bd88fa30eef5a52"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
