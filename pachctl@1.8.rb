require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.0rc3/pachctl_1.8.0rc3_darwin_amd64.zip"
  sha256 "3a1d18c9e1825b8400077d03c69f0866e6775947390a02a87671292eb7f821f0"
  version "v1.8.0rc3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
