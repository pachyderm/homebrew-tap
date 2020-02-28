require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0-rc1/pachctl_1.10.0-rc1_darwin_amd64.zip"
  sha256 "e04669c6ee1a001d9592cdb9993a58273c0abd050c01bbc700de468d8f52ad7e"
  version "v1.10.0-rc1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
