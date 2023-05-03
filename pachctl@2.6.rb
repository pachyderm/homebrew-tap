require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230503"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230503/pachctl_2.6.0-nightly.20230503_darwin_amd64.zip"
    sha256 "020f3e6b1d1897fc2cb73644dd992912507405222f88b79481b95806ff01ad2b"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230503/pachctl_2.6.0-nightly.20230503_darwin_arm64.zip"
    sha256 "f30120658b1d07d2fa694ceaa9b86dea17045e73daf91ad7eef2894aac5be1dc"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
