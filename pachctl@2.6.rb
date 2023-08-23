require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.10"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.10/pachctl_2.6.10_darwin_amd64.zip"
    sha256 "450d68359ee2efafa4dcad61d4ac945adc535fa7520a1e1abb7c9a20155a7ca1"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.10/pachctl_2.6.10_darwin_arm64.zip"
    sha256 "bb12422f5412b153b07af1a6a2a75d147a90c6a7a8e818284d290ebdfd1cb4f5"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
