require "formula"
require "language/go"
require "erb"

class PachctlAT00 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v0.0.0-test.3"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v0.0.0-test.3/pachctl_0.0.0-test.3_darwin_amd64.zip"
    sha256 "cc53229589cde41372dd9c2fb548f6cc5af2318aaa4d4aa7c64c79a408bc4994"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v0.0.0-test.3/pachctl_0.0.0-test.3_linux_amd64.tar.gz"
    sha256 "c89f50e689c3fedf412a623bfee3d83ed0b7cd8372a56314dbd1dcbbd7e4f6e0"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
