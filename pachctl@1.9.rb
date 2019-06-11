require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.0-1ff617394086e2ac29d786b2c19a63288572383a/pachctl_1.9.0-1ff617394086e2ac29d786b2c19a63288572383a_darwin_amd64.zip"
  sha256 "7494d035f2b669c00c0bfbce16b6cf347f7b91a3e870909c10d81d1353045a21"
  version "v1.9.0-1ff617394086e2ac29d786b2c19a63288572383a"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
