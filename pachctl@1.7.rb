require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0-5a590ad9d8e9a09d4029f0f7379462620cf589ee/pachctl_1.7.0-5a590ad9d8e9a09d4029f0f7379462620cf589ee_darwin_amd64.zip"
  sha256 "7706dbf19133ca2086865c281982e4851cdcb6ac3dad9c20c4e17b19b1c0fab1"
  version "v1.7.0-5a590ad9d8e9a09d4029f0f7379462620cf589ee"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
