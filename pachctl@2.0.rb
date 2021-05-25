require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.18/pachctl_2.0.0-alpha.18_darwin_amd64.zip"
  sha256 "fdc337dcadaa61e53aa50dbdc4061624458a6ec47ae1792afff1c8f473dc9696"
  version "v2.0.0-alpha.18"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
