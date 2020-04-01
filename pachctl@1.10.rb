require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.1/pachctl_1.10.1_darwin_amd64.zip"
  sha256 "64e738cf2aaa7fdf0213626139f27741f6875139189cbd3faa3f2f14d9d7fe48"
  version "v1.10.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
