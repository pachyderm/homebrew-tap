require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0-RCX6/pachctl_1.2.0-RCX6_darwin_amd64.zip"
  sha256 "2d552c6e408e2f30352b5ee831c0985fc9db65e67ba4e51049d2d15c3b99f72e"
  version "v1.2.0-RCX6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
