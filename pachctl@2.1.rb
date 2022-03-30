require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.4-770fd609b1cc89c4f81eb59cd8b5813829a3e829/pachctl_2.1.4-770fd609b1cc89c4f81eb59cd8b5813829a3e829_darwin_amd64.zip"
  sha256 "f3d2725128c91da21187f06844bf012350d4554447310c46b55e66893e2996be"
  version "v2.1.4-770fd609b1cc89c4f81eb59cd8b5813829a3e829"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
