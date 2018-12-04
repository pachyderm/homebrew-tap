require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.0/pachctl_1.8.0_darwin_amd64.zip"
  sha256 "f26269bbeec52c3302c61829f94f89324006be6499a07e713cdd3fe007e5ee38"
  version "v1.8.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
