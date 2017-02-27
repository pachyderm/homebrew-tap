require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.9-279552a1d4fd1f53fb930d13f093affd51614a38/pachctl_1.3.9-279552a1d4fd1f53fb930d13f093affd51614a38_darwin_amd64.zip"
  sha256 "3606f8bde8250b25b8d6343fcb4c3555869fead1cd7200dd9e9e425595c2daff"
  version "v1.3.9-279552a1d4fd1f53fb930d13f093affd51614a38"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
