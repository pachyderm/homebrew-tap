require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.0rc3/pachctl_1.9.0rc3_darwin_amd64.zip"
  sha256 "2d1a3bca586b57248e4305b3aa97484f4305560728a61e08ad47b7ab41a6149f"
  version "v1.9.0rc3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
