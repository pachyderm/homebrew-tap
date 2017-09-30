require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0rc8/pachctl_1.6.0rc8_darwin_amd64.zip"
  sha256 "19fb3d0d85fb0af50f3d382833069f4ad9a5b65045bf14fd340a2978983ac1d5"
  version "v1.6.0rc8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
