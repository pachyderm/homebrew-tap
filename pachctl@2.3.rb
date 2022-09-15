require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.3/pachctl_2.3.3_darwin_amd64.zip"
    sha256 "ba2385bf61e3eebc6087064e9d0a91c14c90c2d5d945cd4cdbae7af2fa409273"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.3/pachctl_2.3.3_darwin_arm64.zip"
    sha256 "2033f1ef62007cda08e5d8a5b08458554779b49040c143bc16bcae0310fb437f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
