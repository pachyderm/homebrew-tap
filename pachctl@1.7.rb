require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.13/pachctl_1.7.13_darwin_amd64.zip"
  sha256 "d4aa2b4a237a169b2dc6d9f9c6b383ce4b2eb0339cb9f98a222efd4016527b6e"
  version "v1.7.13"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
