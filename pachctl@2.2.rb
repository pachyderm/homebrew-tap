require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.3/pachctl_2.2.3_darwin_amd64.zip"
  sha256 "372f492f7fa8a6c52c047dd9213e5bbd58a9fe4277ab20836e4eef84bf907b03"
  version "v2.2.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
