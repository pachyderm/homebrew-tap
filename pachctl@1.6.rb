require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.6/pachctl_1.6.6_darwin_amd64.zip"
  sha256 "bf0ed428cfa7ecfefd4ef3e0bd6867f97b03f3eb70723e7d984317c2c26ebe6e"
  version "v1.6.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
