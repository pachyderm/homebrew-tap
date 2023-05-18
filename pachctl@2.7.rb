require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230518"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230518/pachctl_2.7.0-nightly.20230518_darwin_amd64.zip"
    sha256 "63a86295791ded2ac52a520149ef1d566019124e4645e4042d4a9139243f6a85"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230518/pachctl_2.7.0-nightly.20230518_darwin_arm64.zip"
    sha256 "c9c443497e36e5fe106d9f9a6eba0953f65c9e1949f31e2ee5105ef2e48f2f32"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
