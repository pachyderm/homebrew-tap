require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-c2dc1d719856f44183c6be9e6404fa24704b9726/pachctl_1.8.2-c2dc1d719856f44183c6be9e6404fa24704b9726_darwin_amd64.zip"
  sha256 "d86ed2a6737a629c7db878f494a98b07cad5f9184ee2b24202b575601d7e4dcf"
  version "v1.8.2-c2dc1d719856f44183c6be9e6404fa24704b9726"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
