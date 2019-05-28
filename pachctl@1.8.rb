require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.7/pachctl_1.8.7_darwin_amd64.zip"
  sha256 "5f464f679a9749d6a6a657e4625cc95d3cff3c98e23d310d015e35d458cee16f"
  version "v1.8.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
