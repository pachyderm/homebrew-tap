require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.9/pachctl_1.7.9_darwin_amd64.zip"
  sha256 "e4d8b6fe1ae8325a9c274ef1ada413210741dc58143300c99f131289f2189a63"
  version "v1.7.9"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
