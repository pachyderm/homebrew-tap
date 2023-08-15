require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230815"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230815/pachctl_2.8.0-nightly.20230815_darwin_amd64.zip"
    sha256 "93950f6d16300ab6f9500d4b54016fee2a856714853685faaf707e091156a696"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230815/pachctl_2.8.0-nightly.20230815_darwin_arm64.zip"
    sha256 "0619bff863b560feabc22762bd55e7c7a07e9e265ec6f52c1a876d2090e8155d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
