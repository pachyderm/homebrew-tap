require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.3/pachctl_2.4.3_darwin_amd64.zip"
    sha256 "894d22f57d5913e1729aab462a8fdd89c8624a72253da7b7132c3064abf2f92b"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.3/pachctl_2.4.3_darwin_arm64.zip"
    sha256 "71012a1ab0c8afc8f11ae6d5f3260e245557a531c7e4861558456aaf5908910d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
