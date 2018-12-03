require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.0rc4/pachctl_1.8.0rc4_darwin_amd64.zip"
  sha256 "a160730bd9301dd209f0338921ccfbac23c2b20790a3d2718361d41dce8d0dbd"
  version "v1.8.0rc4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
