require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-beta.8/pachctl_2.0.0-beta.8_darwin_amd64.zip"
  sha256 "3677b4b37f51fa08ff9d915e514f6f6e153be20258f2fcdffd56687156714724"
  version "v2.0.0-beta.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
