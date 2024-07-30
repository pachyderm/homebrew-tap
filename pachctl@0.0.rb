require "formula"
require "language/go"
require "erb"

class PachctlAT00 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v0.0.0-test.4"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v0.0.0-test.4/pachctl_0.0.0-test.4_darwin_amd64.zip"
    sha256 "0d41a80fa228046dfb2124e767bd0b2c274fefcd9823099a2669d02380155b4e"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v0.0.0-test.4/pachctl_0.0.0-test.4_linux_amd64.tar.gz"
    sha256 "7d055744dbfc8d7fd13f44d83100d03303c756752df63c4d959face974cf9731"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
