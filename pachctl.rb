require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.2/pachctl_2.9.2_darwin_amd64.zip"
    sha256 "4a715ca4d6fc6c0601d5f1a7e221d838bf91e608f34e5bdc9fdacd481c970ded"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.2/pachctl_2.9.2_darwin_arm64.zip"
    sha256 "c4b14506e7c60a1f8f82667b1e5e5bbe3c9e379b769a820b2939d352d05547d2"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
