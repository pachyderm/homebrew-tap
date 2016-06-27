require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/1.0.1-RCX/pachctl_1.0.1-RCX_darwin_amd64.zip"
  sha256 ""
  version "1.0.1-RCX"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
