require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.3-s3-logging-20200926-2121/pachctl_1.11.3-s3-logging-20200926-2121_darwin_amd64.zip"
  sha256 "44dd33bb2392bd5305c26c783b8018bebb50bcdc17b39731b6bc90dd91eeb5b0"
  version "v1.11.3-s3-logging-20200926-2121"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
