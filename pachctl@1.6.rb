require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0-RC1/pachctl_1.6.0-RC1_darwin_amd64.zip"
  sha256 "47ece9dd98f4f032eb0a72fa97463cd21f3c0032eebf1feff972363b0a710230"
  version "v1.6.0-RC1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
