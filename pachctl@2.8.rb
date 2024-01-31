require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.4/pachctl_2.8.4_darwin_amd64.zip"
    sha256 "24183edad13cd417d921f64e88df2d061ccbdabce6da4a8b0a30bd8e88ab1ecb"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.4/pachctl_2.8.4_darwin_arm64.zip"
    sha256 "74658464811221170983b6c340183828e9251909f2b4edc3571174ae827a36b0"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
