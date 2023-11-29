require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0/pachctl_2.8.0_darwin_amd64.zip"
    sha256 "ff846635d5f11e35624f8f825338eb266dcb84c2d635a11049bc89868b3863d2"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0/pachctl_2.8.0_darwin_arm64.zip"
    sha256 "b8b543a1929712cb7d9e4025821afac956ee111ff503b13c030ce5109d1287fb"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
