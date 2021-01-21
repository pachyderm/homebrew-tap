require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.1/pachctl_2.0.0-alpha.1_darwin_amd64.zip"
  sha256 "be7d36bd0e1401eada4a90a52559cbe2ff829cbf5de3f9ac5c349dfe502b8c2b"
  version "v2.0.0-alpha.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
