require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.6/pachctl_2.0.0-alpha.6_darwin_amd64.zip"
  sha256 "e2d2ad1a95523f18dda02a68933863fa8d03ab315a7cecc470bf6c82a174d7b5"
  version "v2.0.0-alpha.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
