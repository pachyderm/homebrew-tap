require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.9/pachctl_1.6.9_darwin_amd64.zip"
  sha256 "acf9cc9af0152345f3aeca18ff412614d92f6a6cac7abe0f39e3f72e9cb539ff"
  version "v1.6.9"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
