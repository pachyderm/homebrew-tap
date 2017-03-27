require "formula"
require "language/go"
require 'erb'


class PachctlAT13 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.18/pachctl_1.3.18_darwin_amd64.zip"
  sha256 "0db2303bb766e4b21f4628be8674d7517a23b47f2cee60d071298eb4dca87863"
  version "v1.3.18"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
