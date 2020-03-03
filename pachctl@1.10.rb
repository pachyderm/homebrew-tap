require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0-rc2/pachctl_1.10.0-rc2_darwin_amd64.zip"
  sha256 "acf595a48f37097188493758f0b2fa400e2c919d5d512efcd7acc9e10a64188f"
  version "v1.10.0-rc2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
