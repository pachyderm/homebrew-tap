require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0-rc4/pachctl_1.10.0-rc4_darwin_amd64.zip"
  sha256 "5eb5eccf36f33588ea3cdaf84111494ec4f5444cc942cac3c76d0996d0c78150"
  version "v1.10.0-rc4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
