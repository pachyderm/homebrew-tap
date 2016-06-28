require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v0.0.9999/pachctl_0.0.9999_darwin_amd64.zip"
  sha256 "9a1db571998c0e875b07e9294a65bb3d4f69e5fb78daf747df75fbd248a61486"
  version "v0.0.9999"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
