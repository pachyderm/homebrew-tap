require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX18/pachctl_1.0.1-RCX18_darwin_amd64.zip"
  sha256 "fc218c0aabb1a32f81388b3883fd80ada04fb363cd51c4a8c867d0b77b34d6ac"
  version "v1.0.1-RCX18"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
