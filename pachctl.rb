require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX12/pachctl_1.0.1-RCX12_darwin_amd64.zip"
  sha256 "5de5b8a5b7ff62d57ce652ebb3bf6b3b0ef5d3b75a32d10a54cddcdc4a54dc14"
  version "v1.0.1-RCX12"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
