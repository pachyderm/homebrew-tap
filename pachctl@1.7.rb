require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0/pachctl_1.7.0_darwin_amd64.zip"
  sha256 "b794df7ad6ba47b32d4927f3cc5a0117f5fbd4d5405f678171a64672fa1e1268"
  version "v1.7.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
