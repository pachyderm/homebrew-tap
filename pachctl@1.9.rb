require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.0rc1/pachctl_1.9.0rc1_darwin_amd64.zip"
  sha256 "c4a1d3d8425baccae5439c0d80cef2ac2a9f591764f5ab5ef40904a2c9e3dbc7"
  version "v1.9.0rc1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
