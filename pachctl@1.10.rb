require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0alpha1/pachctl_1.10.0alpha1_darwin_amd64.zip"
  sha256 "49964b634c47dc02b39d2b255b7bcdcee6041b38f2f9e4dd1cb8bd34898d9da1"
  version "v1.10.0alpha1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
