require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v0.0.999999/pachctl_0.0.999999_darwin_amd64.zip"
  sha256 "be44b0f6d45fd420940d1945c863c6170a6e9094f1222ced4d100a8ffb754492"
  version "v0.0.999999"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
