require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX14/pachctl_1.0.1-RCX14_darwin_amd64.zip"
  sha256 "874973b635ec8ab0b4f39b04ba9841296446e721cf90661822c15f59f744f617"
  version "v1.0.1-RCX14"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
