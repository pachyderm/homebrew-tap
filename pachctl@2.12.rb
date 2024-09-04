require "formula"
require "language/go"
require "erb"

class PachctlAT212 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.12.0-alpha.1"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.1/pachctl_2.12.0-alpha.1_darwin_arm64.zip"
      sha256 "73b5eb1c609b645d9e2c909bb5917ea3e14caa805391c9afd011edae53944d6e"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.1/pachctl_2.12.0-alpha.1_darwin_amd64.zip"
      sha256 "a4564fa8c0ebbd3feda51c6a7ef10cb750644e985446d7a7c3258ecbee9632ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.1/pachctl_2.12.0-alpha.1_linux_arm64.tar.gz"
      sha256 "ea923d8120e66e9a4e658707da820647718d05c9fb6ad7a183f75a5e5b2815b8"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-alpha.1/pachctl_2.12.0-alpha.1_linux_amd64.tar.gz"
      sha256 "728dbed22d3ec9b467db78eb2a3c941cfaeef0e47bfc3d3f0601f3a1449e7469"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
