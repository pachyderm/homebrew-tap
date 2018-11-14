require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.11/pachctl_1.7.11_darwin_amd64.zip"
  sha256 "4a91aa27c5d9602878392edfbbdb630614bd5ae47e1e0ca85b42fc5948776a2f"
  version "v1.7.11"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
