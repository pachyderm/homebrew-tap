require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230524"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230524/pachctl_2.7.0-nightly.20230524_darwin_amd64.zip"
    sha256 "92801d2796d15a5efa1484f3eb26369b77a1898b9f8fff05d40112a1e010c5d7"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230524/pachctl_2.7.0-nightly.20230524_darwin_arm64.zip"
    sha256 "48f5e400501486632946f3bf700793fa9b1617279147eb4b9b8bc1d4b220e817"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
