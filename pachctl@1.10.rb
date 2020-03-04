require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0-f30de7fa4a757a89fe1f75f913b82340f838fd55/pachctl_1.10.0-f30de7fa4a757a89fe1f75f913b82340f838fd55_darwin_amd64.zip"
  sha256 "e3e0754ff6a57ee0b4a1e792cc054448b0c70edaf0b99e3b5d665924944f8235"
  version "v1.10.0-f30de7fa4a757a89fe1f75f913b82340f838fd55"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
