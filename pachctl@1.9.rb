require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.4-6277238fa1e72d2adcbab36c2a829b0eb6309533/pachctl_1.9.4-6277238fa1e72d2adcbab36c2a829b0eb6309533_darwin_amd64.zip"
  sha256 "566099a9766620daefc2dbfc8fab44e4a6df0ce66d88dfda4f2c15d27f274a20"
  version "v1.9.4-6277238fa1e72d2adcbab36c2a829b0eb6309533"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
