require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2/pachctl_1.8.2_darwin_amd64.zip"
  sha256 "8c45d0caa11849433e7d3da949f4a1ec6ee58747c427b0684e8cc1d3aaef6f1d"
  version "v1.8.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
