require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-rc.6/pachctl_2.0.0-rc.6_darwin_amd64.zip"
  sha256 "8728ea1d02939a0c902b66a0506fde02ed640e8b2d3375c4eb1f23b190bd9e4f"
  version "v2.0.0-rc.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
