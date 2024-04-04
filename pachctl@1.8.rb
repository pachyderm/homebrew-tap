require "formula"
require "language/go"
require "erb"

class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v1.8.8"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.8/pachctl_1.8.8_darwin_amd64.zip"
    sha256 "1828dbef8c8849b29d87041f28fd384b14aeaf05b8adb8964ad04f991b2a7358"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.8/pachctl_1.8.8_linux_amd64.tar.gz"
    sha256 "3fbfd464a61496cb20eb8b530c616fcb919c7a59cf72957bcd7bc884eb5694d3"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
