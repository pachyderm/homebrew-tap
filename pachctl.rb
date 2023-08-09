require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0/pachctl_2.7.0_darwin_amd64.zip"
    sha256 "d4846fe3d26e2e3d77d86588ae79f8dc5a51bda74800f5107ac28db3545202b7"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0/pachctl_2.7.0_darwin_arm64.zip"
    sha256 "097b3c95541d3a92b9b9a85bc3cde05e064af12749c0bdc2f84af3040d65b26c"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
