require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20231208"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231208/pachctl_2.9.0-nightly.20231208_darwin_amd64.zip"
    sha256 "ad8754615a53185508999819de282bd7af23f1b85457d3c2e71376842cc23b0f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231208/pachctl_2.9.0-nightly.20231208_darwin_arm64.zip"
    sha256 "3892779a334f306d1186483901e9e11c92be4b45f5b5b7bbbd72abc8fa11fc2d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
