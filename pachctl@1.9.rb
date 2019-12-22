require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.9-1b3f8868a1f7e75af2cb2788ac7d7a79c59c3ef8/pachctl_1.9.9-1b3f8868a1f7e75af2cb2788ac7d7a79c59c3ef8_darwin_amd64.zip"
  sha256 "379de4d58378e3b6f483d393137df688c606c2d0b68576f8692381e4d5982b11"
  version "v1.9.9-1b3f8868a1f7e75af2cb2788ac7d7a79c59c3ef8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
