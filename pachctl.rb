require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.14/pachctl_1.3.14_darwin_amd64.zip"
  sha256 "74f0b121e08d5ca8f140c8389e846f7f5784d9f44a21b83401385e44e724a964"
  version "v1.3.14"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
