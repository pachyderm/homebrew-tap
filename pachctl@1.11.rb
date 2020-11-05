require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.6/pachctl_1.11.6_darwin_amd64.zip"
  sha256 "30eceac526d7d478be30a243bd6353259a4b6c3a03a66dc52613a29cbb2464ab"
  version "v1.11.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
