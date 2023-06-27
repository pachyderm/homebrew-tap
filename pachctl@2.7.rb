require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230627"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230627/pachctl_2.7.0-nightly.20230627_darwin_amd64.zip"
    sha256 "f103b5786d6b1b37734892001559eed1c39f4120c01325f28fdb73096ae6687b"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230627/pachctl_2.7.0-nightly.20230627_darwin_arm64.zip"
    sha256 "36e4f774976fb8084429f8e9080386815a42f5d207aa6ee83a0cac2d29ef8402"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
