require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.1/pachctl_1.7.1_darwin_amd64.zip"
  sha256 "78cdfd9112f8fa9da4a07898c0749f1fcfef5695dfc21ac1a4d6720d7b25e6d4"
  version "v1.7.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
