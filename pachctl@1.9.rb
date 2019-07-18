require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.1/pachctl_1.9.1_darwin_amd64.zip"
  sha256 "edc4d724644ddb12c97819b62bd9fdbd107fe32588a62cc8253e35ca00118857"
  version "v1.9.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
