require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.4/pachctl_2.6.4_darwin_amd64.zip"
    sha256 "1ed5ca077839190e0f9ce8ece4ac632e0cdb5f7605b5e7e327741800989bd02c"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.4/pachctl_2.6.4_darwin_arm64.zip"
    sha256 "c6976692a98820de00a3fbed5bc9e30b87599019b1e2896185a1c88781008b56"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
