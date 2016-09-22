require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0-RC2/pachctl_1.2.0-RC2_darwin_amd64.zip"
  sha256 "bde84a3fe1566c6b4d96dfd710251cc5859f568c1603cecad0578f6d90b21516"
  version "v1.2.0-RC2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
