require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.5/pachctl_2.0.0-alpha.5_darwin_amd64.zip"
  sha256 "2f5a03ac9b33f5649b703e21eb4e3ad7c7f88b541750661462f2871f815e5b9b"
  version "v2.0.0-alpha.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
