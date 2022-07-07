require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.4/pachctl_2.2.4_darwin_amd64.zip"
  sha256 "17d67b6f4fa99d2c7c1681a7218f4173d71293c794d5127a9f88c8dc909b5c2c"
  version "v2.2.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
