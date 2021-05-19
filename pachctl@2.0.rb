require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.17/pachctl_2.0.0-alpha.17_darwin_amd64.zip"
  sha256 "77ca2f04c28b07367954c4aaae3c413b495217f53902af8d425549033e0eef6a"
  version "v2.0.0-alpha.17"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
