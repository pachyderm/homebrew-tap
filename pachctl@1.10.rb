require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0/pachctl_1.10.0_darwin_amd64.zip"
  sha256 "bd691f0bb24bed7b8d987f07bc730367d87c3636158ca702d3891805b36b39dc"
  version "v1.10.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
