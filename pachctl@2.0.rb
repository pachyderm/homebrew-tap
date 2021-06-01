require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.19/pachctl_2.0.0-alpha.19_darwin_amd64.zip"
  sha256 "84f22f37349ed1c191c10d64bb25f30ff3b396ae6ecefc19c5f7eb1c0704e4fa"
  version "v2.0.0-alpha.19"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
