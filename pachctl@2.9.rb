require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20231213"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231213/pachctl_2.9.0-nightly.20231213_darwin_amd64.zip"
    sha256 "9876c2dd6e556bdee8317af1e8b5e6ad93f8a4c5fd025bc3c6b9072c8ba56362"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231213/pachctl_2.9.0-nightly.20231213_darwin_arm64.zip"
    sha256 "b608bdcb33a81088533e356e57c63b4b3a8922de175cdb36ab93a8c777e32d33"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
