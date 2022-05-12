require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.8/pachctl_2.1.8_darwin_amd64.zip"
  sha256 "0aa78a726b6e9b1b3034e5f1466b34f87dba948854d96476ce5d034d1df79a35"
  version "v2.1.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
