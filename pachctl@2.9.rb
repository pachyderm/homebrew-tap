require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0/pachctl_2.9.0_darwin_amd64.zip"
    sha256 "cca26202d866c80b00db31cdb72d368c4d0bea3d0c03d3c275c756040b8116f6"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0/pachctl_2.9.0_darwin_arm64.zip"
    sha256 "1752949644b5b7b97c88f5d27971e7f5edd6828407154779915c867aea9afc6d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
