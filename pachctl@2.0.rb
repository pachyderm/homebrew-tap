require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.9/pachctl_2.0.0-alpha.9_darwin_amd64.zip"
  sha256 "9afa117f3a5853be306b087c624f26bafa98d278757bc9d358305f67ec03a6d4"
  version "v2.0.0-alpha.9"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
