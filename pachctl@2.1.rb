require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.0/pachctl_2.1.0_darwin_amd64.zip"
  sha256 "55b2b1a55325c12bd3d87b72a302d197b8e589607ec789ba03df171268afd0b1"
  version "v2.1.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
