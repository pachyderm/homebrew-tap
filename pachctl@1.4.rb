require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.0/pachctl_1.4.0_darwin_amd64.zip"
  sha256 "5ffb40d845d7f2410ca7d4ca0a97b06619d0ac1c5ac05f5b16f1ff727607fb79"
  version "v1.4.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
