require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221118"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221118/pachctl_2.5.0-nightly.20221118_darwin_amd64.zip"
    sha256 "50b60f110bb50d145ace658b4fde56cc0d2706690ac81b516556bbc94f118fc3"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221118/pachctl_2.5.0-nightly.20221118_darwin_arm64.zip"
    sha256 "2a0c0193835f14421635f7d55af1ce9375c650ab5849e3eb038cff86821478ad"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
