require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.6"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.6/pachctl_2.7.6_darwin_amd64.zip"
    sha256 "b1d7ebc722b25b442f129d07fc2caca7e1ea98ae25f233ccd9e4d8fd23e9c9f2"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.6/pachctl_2.7.6_darwin_arm64.zip"
    sha256 "6901690c8a93e7cd70ccb23b8aa9d8fd1bcadad1111c19fa5be39478560106a4"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
