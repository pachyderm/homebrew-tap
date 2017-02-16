require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.6/pachctl_1.3.6_darwin_amd64.zip"
  sha256 "6646ca767f96d49e399bdb6365fa5ba3320b0c2a1ff10a0413017e77de648ee8"
  version "v1.3.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
