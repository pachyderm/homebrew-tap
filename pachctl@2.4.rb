require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.0-nightly.20221108"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-nightly.20221108/pachctl_2.4.0-nightly.20221108_darwin_amd64.zip"
    sha256 "19b762730cb2db7d514bcc55f96f0511b6d37416c8dccbb6bdc8bbc2535a1949"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-nightly.20221108/pachctl_2.4.0-nightly.20221108_darwin_arm64.zip"
    sha256 "78e5c0e5713ce3838f803e8beaa76714f01ef233a1047b2eda716d4967c36a10"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
