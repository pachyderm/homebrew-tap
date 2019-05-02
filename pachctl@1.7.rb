require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.12/pachctl_1.7.12_darwin_amd64.zip"
  sha256 "1d5ce05138d2f4681ff11c82b67311d8a61a82f9142540e062b4b07dce383f0c"
  version "v1.7.12"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
