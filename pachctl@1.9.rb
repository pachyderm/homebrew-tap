require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.3/pachctl_1.9.3_darwin_amd64.zip"
  sha256 "5b102ac7d5dfb5323da2495b5f6931887f2c3725287cc3ca65ea52d525ed824a"
  version "v1.9.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
