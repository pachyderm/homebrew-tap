require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0/pachctl_1.2.0_darwin_amd64.zip"
  sha256 "b20f0c4837f0b629959171bac5b13733d97f016d97bde2158b8623297b48c007"
  version "v1.2.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
