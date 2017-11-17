require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.5/pachctl_1.6.5_darwin_amd64.zip"
  sha256 "1b7fd28a6b35afb57ec5e00ca1f570aea5f2d7b3d495d2ff8d38d2fdd266419e"
  version "v1.6.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
