require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.4-abbd633e9a33877386dafd891971d6abade0ad97/pachctl_1.9.4-abbd633e9a33877386dafd891971d6abade0ad97_darwin_amd64.zip"
  sha256 "9baf0334cfa61b5c029c86a883985469518c11d4598a26ab4407bd0b3c876383"
  version "v1.9.4-abbd633e9a33877386dafd891971d6abade0ad97"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
