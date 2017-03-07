require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.13/pachctl_1.3.13_darwin_amd64.zip"
  sha256 "0fb11872f1136351a0c72001904b44b7441f23e3e1ec47602f0b484dcd8cd95d"
  version "v1.3.13"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
