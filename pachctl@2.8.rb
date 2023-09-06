require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-alpha.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-alpha.1/pachctl_2.8.0-alpha.1_darwin_amd64.zip"
    sha256 "6df8129d5f3221c2ff1643c88a8e1158279743d14f4763b5cb1a6fffa48dd613"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-alpha.1/pachctl_2.8.0-alpha.1_darwin_arm64.zip"
    sha256 "11ba30bc7f9b7192b70a1366bc6a0c8eb987b53de673c72777a1bf47c3dd9ecb"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
