require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-rc.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-rc.2/pachctl_2.3.0-rc.2_darwin_amd64.zip"
    sha256 "f88ef843de35a064bc575a22ac387a8ab64ea3e524b6a0f570a455dcd671059c"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-rc.2/pachctl_2.3.0-rc.2_darwin_arm64.zip"
    sha256 "83c0d5aa829ddcdaa3bad7d80c1935e55b6d144496433b44ae44b9a10a1947fc"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
