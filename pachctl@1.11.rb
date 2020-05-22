require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.0-alpha2/pachctl_1.11.0-alpha2_darwin_amd64.zip"
  sha256 "014cb100e7377f383f2b92bd4fa79eb885ee34444b80c8240c23da622b0aad97"
  version "v1.11.0-alpha2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
