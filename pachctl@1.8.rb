require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.5-e20ac1978f01a451a1ce59ea524113eb9cd6734d/pachctl_1.8.5-e20ac1978f01a451a1ce59ea524113eb9cd6734d_darwin_amd64.zip"
  sha256 "cdb4d8ba4108afa5078c17f0801997370f2030ff401c87c14bb20d054c2128ce"
  version "v1.8.5-e20ac1978f01a451a1ce59ea524113eb9cd6734d"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
