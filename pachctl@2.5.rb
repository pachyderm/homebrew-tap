require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221125"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221125/pachctl_2.5.0-nightly.20221125_darwin_amd64.zip"
    sha256 "3b357e20046ec1b1d8ceeb53e40a0d88ac1d8b4cd92290ca419020b94f0b20df"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221125/pachctl_2.5.0-nightly.20221125_darwin_arm64.zip"
    sha256 "d6423772ebe9debd696dba7b4b0c1d4c264059c6219537a7717733f9bd3b841f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
