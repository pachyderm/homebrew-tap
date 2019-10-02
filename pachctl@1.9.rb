require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.6/pachctl_1.9.6_darwin_amd64.zip"
  sha256 "1f0d32d54239088280dace9e170061fcfd49f72b4c671beb93f296d1e2d7d38b"
  version "v1.9.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
