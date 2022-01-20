require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.6/pachctl_2.0.6_darwin_amd64.zip"
  sha256 "53641462ccbaa917cc90628ae5167c0ecc1bfb0bc23c727835f3950a4e0291be"
  version "v2.0.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
