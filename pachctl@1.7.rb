require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.7/pachctl_1.7.7_darwin_amd64.zip"
  sha256 "3a20f342e2c2364cc66af2dba55da45d3d35ff8b5f48663627ced1fcd0360e26"
  version "v1.7.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
