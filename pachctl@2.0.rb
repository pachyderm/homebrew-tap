require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.13/pachctl_2.0.0-alpha.13_darwin_amd64.zip"
  sha256 "f767f79fb04a98a8ad0ca353034563d4396c8d234e46255fdc7edc954fded0b2"
  version "v2.0.0-alpha.13"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
