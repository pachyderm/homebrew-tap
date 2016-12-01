require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.5/pachctl_1.2.5_darwin_amd64.zip"
  sha256 "4ca90b71c1d5d1b61e2755745d1307d663bfc84fee15651af44bf14032416815"
  version "v1.2.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
