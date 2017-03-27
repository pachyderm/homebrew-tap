require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.0-RCtestrlsa/pachctl_1.4.0-RCtestrlsa_darwin_amd64.zip"
  sha256 "c043a6133b9c19a8908d567961207015f7575c966607023f5754e0ca59980ac8"
  version "v1.4.0-RCtestrlsa"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
