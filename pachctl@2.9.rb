require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-rc.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-rc.1/pachctl_2.9.0-rc.1_darwin_amd64.zip"
    sha256 "c4800d64f112a5da59fc3ab8490181b2c231fceff88f666adde95ab5596e4789"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-rc.1/pachctl_2.9.0-rc.1_darwin_arm64.zip"
    sha256 "adb1be3942151aa4be125e2a6bbc37e2f8b57253c3cf76723ead2e04bef722ff"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
