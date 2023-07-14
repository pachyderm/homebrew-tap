require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230714"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230714/pachctl_2.7.0-nightly.20230714_darwin_amd64.zip"
    sha256 "842f272a5332630751448407005da2b96e1662e67d59844f5f74d287e7c39ef1"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230714/pachctl_2.7.0-nightly.20230714_darwin_arm64.zip"
    sha256 "e1e670cd61e3ef013a5df49161315d7b1617abce88435a867d44db4257820bf9"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
