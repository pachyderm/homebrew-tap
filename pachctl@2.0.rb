require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0/pachctl_2.0.0_darwin_amd64.zip"
  sha256 "8a8a032ec845a408b5422c2ae6ea6a94b79900d52f019666385d6460e2cdf74e"
  version "v2.0.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
