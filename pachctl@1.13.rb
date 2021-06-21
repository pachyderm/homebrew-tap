require "formula"
require "language/go"
require 'erb'


class PachctlAT113 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.3/pachctl_1.13.3_darwin_amd64.zip"
  sha256 "ecf60959c2600e5ec07ff6d92fb01d5212ad316ce84b821d2cdf767720f2a622"
  version "v1.13.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
