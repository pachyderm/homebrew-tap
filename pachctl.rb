require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.1/pachctl_2.6.1_darwin_amd64.zip"
    sha256 "933bb720863f53044850dc89d0e797ef124daffd4bb3a6748acdf74fd6461cc9"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.1/pachctl_2.6.1_darwin_arm64.zip"
    sha256 "02c7e603fd98c4ee6d54e1c38ea51eb9d40786ff3f21a1899f1b747798d25149"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
