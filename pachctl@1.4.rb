require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.6/pachctl_1.4.6_darwin_amd64.zip"
  sha256 "abec5f29a03fd4337c49d35e96e2226ef8b4d3209df0ebc8367f5789c30a86d4"
  version "v1.4.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
