require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.7-61a193e4dc080274d29e9ef9ab07053a51664e37/pachctl_1.9.7-61a193e4dc080274d29e9ef9ab07053a51664e37_darwin_amd64.zip"
  sha256 "ec4d2f1a1828785b5ffe2e6dda4f138d6e5b34086c14a743609c1dccb2c122c0"
  version "v1.9.7-61a193e4dc080274d29e9ef9ab07053a51664e37"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
