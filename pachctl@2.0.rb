require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.3-bdcb904718956676eb262d51a34f8ce51cd408ca/pachctl_2.0.3-bdcb904718956676eb262d51a34f8ce51cd408ca_darwin_amd64.zip"
  sha256 "638e32a16571c35b259845e222e6f2d0714f4862973bb35089c795d20653df7c"
  version "v2.0.3-bdcb904718956676eb262d51a34f8ce51cd408ca"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
