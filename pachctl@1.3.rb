require "formula"
require "language/go"
require 'erb'


class PachctlAT13 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.17/pachctl_1.3.17_darwin_amd64.zip"
  sha256 "723068d3900228bba92ff4a6307cc5d49343b4be86777f70ead23f2aa814002a"
  version "v1.3.17"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
