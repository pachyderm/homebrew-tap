require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.2/pachctl_2.8.2_darwin_amd64.zip"
    sha256 "94de0c07b19ccea30251b1edd7c10874eb776eb17b71b8e65e3f374f96c1a643"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.2/pachctl_2.8.2_darwin_arm64.zip"
    sha256 "0dc1742028c98a6e16c49415da58a2ea1f5a7b2dd0956d0305bbca49ead3f159"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
