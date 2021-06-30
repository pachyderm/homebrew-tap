require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.27/pachctl_2.0.0-alpha.27_darwin_amd64.zip"
  sha256 "3c374663a5e01579bf0d08aff105ac81e5ccac7f8d5f28462985cf8dbb7fb9cd"
  version "v2.0.0-alpha.27"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
