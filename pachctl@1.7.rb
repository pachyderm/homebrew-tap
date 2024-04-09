require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.14/pachctl_1.7.14_darwin_amd64.zip"
  sha256 "71e93b523b2b993010aaa548a4b96b89fdabd85d89b80965e14d888c84ff1d18"
  version "v1.7.14"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
