require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230515"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230515/pachctl_2.6.0-nightly.20230515_darwin_amd64.zip"
    sha256 "3445bba911c0fbb74de7878fcd8fd38b7c8789db88b4eb2e60d3919cd3aff84e"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230515/pachctl_2.6.0-nightly.20230515_darwin_arm64.zip"
    sha256 "e135dd2ce9b47e05bcffc68feb2930c5841b42fa253bc9f76f2aafc624b58759"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
