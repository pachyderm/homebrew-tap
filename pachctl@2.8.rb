require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-alpha.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-alpha.3/pachctl_2.8.0-alpha.3_darwin_amd64.zip"
    sha256 "eeb23f598f690f9ac9cd5ea58f86e15de8e374e04f9512e48ac24a7889cdb2b0"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-alpha.3/pachctl_2.8.0-alpha.3_darwin_arm64.zip"
    sha256 "b627f451c9337a0844a22dd0d46c6f779b895829dddddf4965fa94f4cecadb8d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
