require "formula"
require "language/go"
require 'erb'


class PachctlAT210 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.0-alpha.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.4/pachctl_2.10.0-alpha.4_darwin_amd64.zip"
    sha256 "fb48fb20a9784698d7fc64a8e699012628e6ef6c87c973d7bbb92e066d0552d0"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-alpha.4/pachctl_2.10.0-alpha.4_darwin_arm64.zip"
    sha256 "dfa7f95ffa681ace8d7fb5d3bb7785747cce402a27618280323af80326a946e7"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
