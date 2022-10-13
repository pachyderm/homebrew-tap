require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.0-alpha.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-alpha.4/pachctl_2.4.0-alpha.4_darwin_amd64.zip"
    sha256 "c6a78ed831e3bcce3a4b383c65af4fdbfa91d0683b66eebf91e5a530ce54f9d0"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-alpha.4/pachctl_2.4.0-alpha.4_darwin_arm64.zip"
    sha256 "f664e4c233ad71001b66c148fc0339d444f34cde7e08aa49a083d72fa766d86e"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
