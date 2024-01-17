require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-alpha.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-alpha.2/pachctl_2.9.0-alpha.2_darwin_amd64.zip"
    sha256 "da13b7cd8d47ff1e4d739d0cbac0cb3f7e887df83c20806da2e7c9771596fb9f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-alpha.2/pachctl_2.9.0-alpha.2_darwin_arm64.zip"
    sha256 "3a92dbd7b87596de117697b46d2b5c5dd520058a9ff588c087f8a57533f28671"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
