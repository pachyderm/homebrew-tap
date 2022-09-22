require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.4/pachctl_2.3.4_darwin_amd64.zip"
    sha256 "f854e01a314144bc02b01759aa471713ad6856efb7fdae745a700511106f0833"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.4/pachctl_2.3.4_darwin_arm64.zip"
    sha256 "f4fa6c5854b6649405c4879ec7b7d1f6bba76b976bd3d905a40232bc5a0a6e0e"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
