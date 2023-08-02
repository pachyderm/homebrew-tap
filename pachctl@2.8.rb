require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230802"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230802/pachctl_2.8.0-nightly.20230802_darwin_amd64.zip"
    sha256 "493a5af0d205373ef75e154afe2bd89aaff5de497686ed9225a81adc10472071"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230802/pachctl_2.8.0-nightly.20230802_darwin_arm64.zip"
    sha256 "501fdcdf7cc8e322758833a86a3f25868dde11642cd773bb55b7debd2ad3e7c8"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
