require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.2/pachctl_1.9.2_darwin_amd64.zip"
  sha256 "75f43b724a0e0a82f6b357c7d83bc2e11586c0dee930c609aedef5959b2d5f99"
  version "v1.9.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
