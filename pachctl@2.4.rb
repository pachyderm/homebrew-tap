require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.0-alpha.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-alpha.2/pachctl_2.4.0-alpha.2_darwin_amd64.zip"
    sha256 "f644ceaa11f722fdb9c0bbce112a103aa2e5cfc703f110ea68f17b33d95e51e4"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-alpha.2/pachctl_2.4.0-alpha.2_darwin_arm64.zip"
    sha256 "5001c15ca1a43e27a8c53f0002be73b23313dac2db6c0731faa2b5f7bc68768a"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
