require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.4-8d06858331f2e9ad9e2833f52170efeafd01d50e/pachctl_2.1.4-8d06858331f2e9ad9e2833f52170efeafd01d50e_darwin_amd64.zip"
  sha256 "d77b873cb705ef9f1f0bb0e7328b8a33eb982cb59e8e597598e6e90349a363bc"
  version "v2.1.4-8d06858331f2e9ad9e2833f52170efeafd01d50e"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
