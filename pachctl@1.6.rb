require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.2/pachctl_1.6.2_darwin_amd64.zip"
  sha256 "c2970818ddd6e4b2a2d20551f0625d4eed8413957372cbb49961445933685a79"
  version "v1.6.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
