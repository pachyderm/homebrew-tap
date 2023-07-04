require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230704"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230704/pachctl_2.7.0-nightly.20230704_darwin_amd64.zip"
    sha256 "6bd11d32ba9652452fc1df93fc05d33db33264731b23c332fcf4d5b7482d7bd2"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230704/pachctl_2.7.0-nightly.20230704_darwin_arm64.zip"
    sha256 "d0200e232fd6571762955e284ab56147d64f08f33410ac69d67eb928c605c374"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
