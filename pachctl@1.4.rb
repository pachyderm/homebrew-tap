require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.7/pachctl_1.4.7_darwin_amd64.zip"
  sha256 "2754a47e5cab20181690afcd999b4f535804f69731f6e522f6e223b843208cc7"
  version "v1.4.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
