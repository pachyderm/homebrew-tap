require "formula"
require "language/go"
require 'erb'


class PachctlAT13 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.19/pachctl_1.3.19_darwin_amd64.zip"
  sha256 "2c20beacc0f94e0ce3aa101c4d026cc744a095de5bd4929cb8ec8ccb100f4b2d"
  version "v1.3.19"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
