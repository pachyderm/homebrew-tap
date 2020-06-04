require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.0-beta1/pachctl_1.11.0-beta1_darwin_amd64.zip"
  sha256 "17704ca91d09b5a6d0ea622e1d1f4f5499bb6de3d814fb4c4f4e56bdc9c122fb"
  version "v1.11.0-beta1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
