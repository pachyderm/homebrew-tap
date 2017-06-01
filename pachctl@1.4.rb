require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.7/pachctl_1.4.7_darwin_amd64.zip"
  sha256 "fb6b91e062ee8f546be3800c20836f805022256863ac833f2d7e7aa988034ce9"
  version "v1.4.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
