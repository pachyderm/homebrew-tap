require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX9/pachctl_1.0.1-RCX9_darwin_amd64.zip"
  sha256 "9a5f4edf68f0642a1f0437c6f537a0f87a33de17226224602177b8add67118fd"
  version "v1.0.1-RCX9"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
