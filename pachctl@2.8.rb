require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230811"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230811/pachctl_2.8.0-nightly.20230811_darwin_amd64.zip"
    sha256 "fd7cecc99e5a2476ea6309d9de393bb6f547b4b5e18954afc80b897af9c051ba"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230811/pachctl_2.8.0-nightly.20230811_darwin_arm64.zip"
    sha256 "37d3d3e57a78ea393de9fc017d366277cc81998fae2e1ef2d0ee28792bb0f8a5"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
