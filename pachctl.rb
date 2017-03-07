require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.12/pachctl_1.3.12_darwin_amd64.zip"
  sha256 "2e2d5138a1ecfc99a9564ee0ef578ce590f4c2ef0d92d1d9a839baf78148d3ac"
  version "v1.3.12"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
