require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.4/pachctl_1.6.4_darwin_amd64.zip"
  sha256 "44b3938742459dc983dd218050b4754c23334c7845ad4a9ade9c82f3a76fa2c3"
  version "v1.6.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
