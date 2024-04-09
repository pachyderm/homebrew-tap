require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.11"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.11/pachctl_2.6.11_darwin_amd64.zip"
    sha256 "afd3039baba2d3188bafa88aa78da1c349d0e02fcffb28fa1d12db1197ed9989"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.11/pachctl_2.6.11_darwin_arm64.zip"
    sha256 "f09e99f94be448a2e8150a7232d9a58d5f23559ae5c1ba3ce981f7b37d201a8b"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
