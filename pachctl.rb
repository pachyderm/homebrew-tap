require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.5"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.5/pachctl_2.6.5_darwin_amd64.zip"
    sha256 "66187aec437d9bd99b5eecdf3df4dbf63b56f95ca5c3e96060b60162d8d95ded"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.5/pachctl_2.6.5_darwin_arm64.zip"
    sha256 "14b61470561a24023c77f192c91f8efc9bc78b03b5a192782da031c0376791e0"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
