require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0/pachctl_2.5.0_darwin_amd64.zip"
    sha256 "f2a958fe6b2a6fd5627d399e1671d869949a44632a2edb362740d6c7c91888d2"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0/pachctl_2.5.0_darwin_arm64.zip"
    sha256 "5f9e44a01e91bcb2e9bc3e739021d92670d3b3ee36f5e5411a602037e9b21be5"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
