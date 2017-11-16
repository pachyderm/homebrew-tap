require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.4/pachctl_1.6.4_darwin_amd64.zip"
  sha256 "026d2b1745d59104bee24c3d5baaa43349d0ae1e659fc7e9b0e76106d7911e0c"
  version "v1.6.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
