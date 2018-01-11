require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.7/pachctl_1.6.7_darwin_amd64.zip"
  sha256 "f928e4d23ec93b84b639b7d413950866efab95704d58317e2003d0bec48976a7"
  version "v1.6.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
