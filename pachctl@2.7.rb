require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230602"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230602/pachctl_2.7.0-nightly.20230602_darwin_amd64.zip"
    sha256 "e86fb47e9e029aadb7a3d5630c746af210535f4a2119d421fb01e687a78ec893"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230602/pachctl_2.7.0-nightly.20230602_darwin_arm64.zip"
    sha256 "2eeb98cb303aedde685901d9a83d2aa77c6fd8ed007e5fd9767c900d6f530a63"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
