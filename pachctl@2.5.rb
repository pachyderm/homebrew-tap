require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221208"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221208/pachctl_2.5.0-nightly.20221208_darwin_amd64.zip"
    sha256 "960b248b1ab6f448aa85f0e10d7f8e80d2018745048302b64d74d49c564d2d11"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221208/pachctl_2.5.0-nightly.20221208_darwin_arm64.zip"
    sha256 "01eae872c016e39b867e159879e8f3000edf0ba040a46fc85b83ee3d165ce17f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
