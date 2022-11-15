require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221115"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221115/pachctl_2.5.0-nightly.20221115_darwin_amd64.zip"
    sha256 "9879d3aa5a0af364c7c3794edab5473b204fc195671404a7266818101673d124"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221115/pachctl_2.5.0-nightly.20221115_darwin_arm64.zip"
    sha256 "a6e2a32c8855f8ca9cf7554726715cbb9bb9c86841c183f87eb6160d89f2ec50"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
