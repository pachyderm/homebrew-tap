require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0-RC2/pachctl_1.6.0-RC2_darwin_amd64.zip"
  sha256 "2d8227319d736762fd82c5f8b1b1d3d884672a424a96aa6198b3d802b58cc66f"
  version "v1.6.0-RC2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
