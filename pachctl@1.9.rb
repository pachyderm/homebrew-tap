require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.7-57afde3038f49b0b9d229b233c09f7ef3b9ab694/pachctl_1.9.7-57afde3038f49b0b9d229b233c09f7ef3b9ab694_darwin_amd64.zip"
  sha256 "3f8b74a7472b14ec12a592342b0465ddc2fd4855f4405e722bfeb77f5c0e5157"
  version "v1.9.7-57afde3038f49b0b9d229b233c09f7ef3b9ab694"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
