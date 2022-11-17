require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221117"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221117/pachctl_2.5.0-nightly.20221117_darwin_amd64.zip"
    sha256 "22a2eb57152343aabed472d5d4610252b08a416400970a9840f6a6d455837732"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221117/pachctl_2.5.0-nightly.20221117_darwin_arm64.zip"
    sha256 "6c957b7a71f7562bfb51dd17cd91fddeb1a6d1886e42fd74d11971761f8e2b89"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
