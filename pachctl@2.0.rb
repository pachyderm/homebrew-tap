require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.20/pachctl_2.0.0-alpha.20_darwin_amd64.zip"
  sha256 "136a0b5f06ea918153e2b0399c8051f9883c457043dd7298f4677254fe2ef83a"
  version "v2.0.0-alpha.20"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
