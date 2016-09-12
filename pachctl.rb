require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0-RCX/pachctl_1.2.0-RCX_darwin_amd64.zip"
  sha256 "4281c8ecf882fedd0ac798715c207e46afd7244b42c0267b73f3f7b25bb25016"
  version "v1.2.0-RCX"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
