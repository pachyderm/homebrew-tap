require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX11/pachctl_1.0.1-RCX11_darwin_amd64.zip"
  sha256 "455e0e8973633cbc3b2aae8900a7dda6d0956ae6404b10789464a39a782b4f5f"
  version "v1.0.1-RCX11"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
