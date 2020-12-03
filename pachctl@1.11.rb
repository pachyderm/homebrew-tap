require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.8/pachctl_1.11.8_darwin_amd64.zip"
  sha256 "849cc0656d0f42eb9b5d8869e0ae55aabfe8ee7fee521e36db9626d426848ca7"
  version "v1.11.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
