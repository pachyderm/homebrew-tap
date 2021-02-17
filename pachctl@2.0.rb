require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.4/pachctl_2.0.0-alpha.4_darwin_amd64.zip"
  sha256 "fb4c0286dc43799d0a7baf9981427965b584e44ddbd79f52f37dc78da1c8d308"
  version "v2.0.0-alpha.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
