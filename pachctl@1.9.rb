require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.11/pachctl_1.9.11_darwin_amd64.zip"
  sha256 "8c8eb039e5d1d1c9a599bf5ad8924cc863993e208196253889b4fcca90110598"
  version "v1.9.11"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
