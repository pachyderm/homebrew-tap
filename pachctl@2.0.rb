require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-rc.3/pachctl_2.0.0-rc.3_darwin_amd64.zip"
  sha256 "7065f27f2d30f48aac8b90a2cd1bb141e58a9db21076f499d72c1c5b13f17f9e"
  version "v2.0.0-rc.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
