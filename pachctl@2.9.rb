require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20231201"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231201/pachctl_2.9.0-nightly.20231201_darwin_amd64.zip"
    sha256 "aebb3cbeacec926569a2d059a36ee363ce53d5f42d97ff3387f93336120cd5d1"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231201/pachctl_2.9.0-nightly.20231201_darwin_arm64.zip"
    sha256 "9519a82d5262ab7023381bc2c970b29fa24103a4fbd5bf3766ac9c9ec837987a"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
