require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-beta.6/pachctl_2.0.0-beta.6_darwin_amd64.zip"
  sha256 "9b08fb86371250ccd815709c769a6f6de71d9428dfef9ebf0b14cb37473f420a"
  version "v2.0.0-beta.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
