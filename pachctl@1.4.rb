require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.7-RC1/pachctl_1.4.7-RC1_darwin_amd64.zip"
  sha256 "8f142522f7fdc9e0f5eccf66ac114e52da99f12ed574ab76ce4ea8560d33010b"
  version "v1.4.7-RC1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
