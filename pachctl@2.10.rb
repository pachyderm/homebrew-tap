require "formula"
require "language/go"
require 'erb'


class PachctlAT210 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.0-alpha.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.2/pachctl_2.10.0-alpha.2_darwin_amd64.zip"
    sha256 "9b687fe69d7d2a88f67373756cf0c7a7f050341cc44e01451cea6c6c0bfbd48e"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.2/pachctl_2.10.0-alpha.2_darwin_arm64.zip"
    sha256 "3a99eb4c0ad401be060eb6773ee5839bc74dabb3d403be9c68a9ff1ab5206616"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
