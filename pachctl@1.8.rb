require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.4/pachctl_1.8.4_darwin_amd64.zip"
  sha256 "fb7c74f4ebcc42daf969b4d68274fd2ece7df13c74109b4b41251f1761653622"
  version "v1.8.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
