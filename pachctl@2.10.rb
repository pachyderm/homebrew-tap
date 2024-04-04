require "formula"
require "language/go"
require 'erb'

class PachctlAT210 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.0-alpha.4"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.4/pachctl_2.10.0-alpha.4_darwin_arm64.zip"
      sha256 "dfa7f95ffa681ace8d7fb5d3bb7785747cce402a27618280323af80326a946e7"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.4/pachctl_2.10.0-alpha.4_darwin_amd64.zip"
      sha256 "fb48fb20a9784698d7fc64a8e699012628e6ef6c87c973d7bbb92e066d0552d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.4/pachctl_2.10.0-alpha.4_linux_arm64.tar.gz"
      sha256 "56a25241374c52a55aa3d3fe350ac4554b014ee8810fec7d07447341f3b32960"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.4/pachctl_2.10.0-alpha.4_linux_amd64.tar.gz"
      sha256 "9c83f9b10cd22c9f40a7aefe84da6f9319771a3f9b8c69b8465b904d63b1a0ac"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
