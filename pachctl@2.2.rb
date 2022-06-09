require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.2/pachctl_2.2.2_darwin_amd64.zip"
  sha256 "d0ede3bfc37caf13aa4f61241df2d85dc64a184a3f7d22158bd4778df9d7d750"
  version "v2.2.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
