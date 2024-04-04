require "formula"
require "language/go"
require "erb"

class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v1.7.14"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.14/pachctl_1.7.14_darwin_amd64.zip"
    sha256 "71e93b523b2b993010aaa548a4b96b89fdabd85d89b80965e14d888c84ff1d18"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.14/pachctl_1.7.14_linux_amd64.tar.gz"
    sha256 "8a72c3daccb49f18fd5e2a720b06d12c87323bda0a00c290605f7a7bf7655ce8"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
