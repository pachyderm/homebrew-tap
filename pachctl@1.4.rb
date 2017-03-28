require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.0/pachctl_1.4.0_darwin_amd64.zip"
  sha256 "dc487284bd2d3a6231f5174e43a45462eb38be6197760d41ee3bc920effd5309"
  version "v1.4.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
