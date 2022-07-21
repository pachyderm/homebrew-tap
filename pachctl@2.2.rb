require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.2.6"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.6/pachctl_2.2.6_darwin_amd64.zip"
    sha256 "fdd12ec1b001afcf94e685eb969595d070a6e02915f4aa8a49174b040dd8ff10"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.6/pachctl_2.2.6_darwin_amd64.zip"
    sha256 "fdd12ec1b001afcf94e685eb969595d070a6e02915f4aa8a49174b040dd8ff10"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
