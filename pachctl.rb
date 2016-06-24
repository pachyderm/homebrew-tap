require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/archive/v1.0.1(1433).tar.gz"
  sha256 "5d4f66d38256fb3c9b8528f3acf234b11e998b3c00215fa73cd3b4c0f8cbc4ce"
  version "1.0.1(1433)"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
