require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221201"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221201/pachctl_2.5.0-nightly.20221201_darwin_amd64.zip"
    sha256 "61af1f8bb769c362ad55eb9f2b9391cfe173edef12e3093fea7c0a05fd573829"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221201/pachctl_2.5.0-nightly.20221201_darwin_arm64.zip"
    sha256 "1ee490a9ea218b2e01df4c0c8822a81bc615a6892fdc00e361c4dd56b430e2c1"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
