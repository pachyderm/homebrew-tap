require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.3/pachctl_2.6.3_darwin_amd64.zip"
    sha256 "05963c169fc0bba7d9f3babe30af62f16aa492c7bc4bff35307586bf2df53ab4"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.3/pachctl_2.6.3_darwin_arm64.zip"
    sha256 "9cd667e6c504893c565c77400265d838e0e8e8cc9d2569fde1f4f82a28d4b353"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
