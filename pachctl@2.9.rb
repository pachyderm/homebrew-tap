require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20231215"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231215/pachctl_2.9.0-nightly.20231215_darwin_amd64.zip"
    sha256 "2ea4872f9f1ada774a6046d3cbdaa0247436e30d623e9f359ce083cea05df2e5"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231215/pachctl_2.9.0-nightly.20231215_darwin_arm64.zip"
    sha256 "344098de3c9d4a87264698e5faaf5d0982278ba6531d727b6503f789253b0646"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
