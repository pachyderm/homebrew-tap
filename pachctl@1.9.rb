require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.10/pachctl_1.9.10_darwin_amd64.zip"
  sha256 "561fb4b76659b0062a3b1ef0d0e374a7014d7fbe94aacf34987fcb2b5c318b08"
  version "v1.9.10"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
