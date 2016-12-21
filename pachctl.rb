require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.2/pachctl_1.3.2_darwin_amd64.zip"
  sha256 "5da16ab99849e507af771361f4bbd9ab75c88bd70065b014b68365c8be368f8a"
  version "v1.3.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
