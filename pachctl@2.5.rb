require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.8"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.8/pachctl_2.5.8_darwin_amd64.zip"
    sha256 "87fa53957bc301ffd004dc3b3609b9980e435bacc609a97a054e9dcb92f21efb"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.8/pachctl_2.5.8_darwin_arm64.zip"
    sha256 "5fc32a4eacea36615905adb406fe8909e2e5c1173ce8d7ea1241cedf71c90e09"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
