require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.16/pachctl_2.0.0-alpha.16_darwin_amd64.zip"
  sha256 "191aa755d1923906d11ba9474f7eab6f48a98dab08b0fe454a3c64bf1506a487"
  version "v2.0.0-alpha.16"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
