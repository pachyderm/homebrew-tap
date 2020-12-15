require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.9/pachctl_1.11.9_darwin_amd64.zip"
  sha256 "5b9ac2e7c57c53823e3343a3e486d95afc56c35df2a3169307845a658c6d53da"
  version "v1.11.9"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
