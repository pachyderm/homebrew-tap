require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.0-RCtestrlsb/pachctl_1.4.0-RCtestrlsb_darwin_amd64.zip"
  sha256 "65628bc49aa545d67cd55d921f4a1de4da9fa50b4de2cdbc1ecdb13b2e10b451"
  version "v1.4.0-RCtestrlsb"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
