require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.8/pachctl_2.0.0-alpha.8_darwin_amd64.zip"
  sha256 "73f9675f4fccdff7f94268c617c719cf7e4cbfe18dcfe5f213d91000b917550b"
  version "v2.0.0-alpha.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
