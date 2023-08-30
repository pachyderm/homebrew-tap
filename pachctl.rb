require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.2/pachctl_2.7.2_darwin_amd64.zip"
    sha256 "7618b8bebca50366c85ba168160a29d147f69850d3e36f976b6ccf6a15d9a8e9"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.2/pachctl_2.7.2_darwin_arm64.zip"
    sha256 "e4dc11a579f08a330c83a4df176c6ea05a55f39e3122fc14d56c6fe7c0f87fa7"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
