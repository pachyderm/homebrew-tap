require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.1/pachctl_1.6.1_darwin_amd64.zip"
  sha256 "8485d84f7dfa0cd57cf9b407d51dede7e91146901a4de2dd27a9047a8b248e2b"
  version "v1.6.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
