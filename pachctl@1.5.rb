require "formula"
require "language/go"
require 'erb'


class PachctlAT15 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.5.0/pachctl_1.5.0_darwin_amd64.zip"
  sha256 "bfd83fe168ea771dd4e26f2e8791ac6774508f225e97f0bd54c7c914f8f4ac01"
  version "v1.5.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
