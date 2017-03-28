require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.0/pachctl_1.4.0_darwin_amd64.zip"
  sha256 "a7cc841f9dcfb02a70cc363f27aadfdd9d3ec9190eaf20db3b30bb0f0ad955ef"
  version "v1.4.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
