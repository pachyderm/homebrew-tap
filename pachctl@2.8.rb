require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-rc.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-rc.2/pachctl_2.8.0-rc.2_darwin_amd64.zip"
    sha256 "df3009abd0a6d4550b3a9bb98a13733be377abfd96c5e9446e0c7bf5750c7aff"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-rc.2/pachctl_2.8.0-rc.2_darwin_arm64.zip"
    sha256 "72f128362116b0daf1cd41335b9a7ba206c6e8d2b14eafc10aec361762e520e9"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
