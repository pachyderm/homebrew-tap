require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-proxy.1/pachctl_2.0.0-proxy.1_darwin_amd64.zip"
  sha256 "8b17e896eead6607db1dcb8a7c497239afe7a73c035b7accb1e22d0711f26158"
  version "v2.0.0-proxy.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
