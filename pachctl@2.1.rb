require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.0-rc.2/pachctl_2.1.0-rc.2_darwin_amd64.zip"
  sha256 "65fe44e2bf9e14ec3986b9d4e8719e05e9ebdb27831098f430257e512fd03e92"
  version "v2.1.0-rc.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
