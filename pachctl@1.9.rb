require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.7-d520492f159e56e6bcf5cc0329b8975cf06f9142/pachctl_1.9.7-d520492f159e56e6bcf5cc0329b8975cf06f9142_darwin_amd64.zip"
  sha256 "28b4d0e8fd9be51c1b98d08d2be9181c28fb28cfbad7eaaf93703c1081135c5d"
  version "v1.9.7-d520492f159e56e6bcf5cc0329b8975cf06f9142"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
