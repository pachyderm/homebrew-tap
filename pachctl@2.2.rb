require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.0-rc.2/pachctl_2.2.0-rc.2_darwin_amd64.zip"
  sha256 "44284734e7b9104f00ad5c646e71bf075420a7b2894ca6d56f4e0233279b20ff"
  version "v2.2.0-rc.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
