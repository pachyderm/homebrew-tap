require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.8"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.8/pachctl_2.6.8_darwin_amd64.zip"
    sha256 "b2fb6d53e04892fb466a02d4d56072879edbb62bc955c9e5e826648982da519c"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.8/pachctl_2.6.8_darwin_arm64.zip"
    sha256 "adbfc051d5452c5907527eba93abe9b81e7b58ca7c0751a2b34459c1d3a73a99"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
