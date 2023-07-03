require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230703"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230703/pachctl_2.7.0-nightly.20230703_darwin_amd64.zip"
    sha256 "81a415f69c71a9ca31211b836cf364808b0f180dbb218b0c7c84d72dc904e6bf"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230703/pachctl_2.7.0-nightly.20230703_darwin_arm64.zip"
    sha256 "026ab28610d69079f910101601165e5c2738d4c5ac40bec647c405b5235a203e"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
