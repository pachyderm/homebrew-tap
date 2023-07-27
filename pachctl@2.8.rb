require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230727"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230727/pachctl_2.8.0-nightly.20230727_darwin_amd64.zip"
    sha256 "a199fb32464f6d8ab95f7807b6428bb4c9bcd6d1f69381077d671ddced916274"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230727/pachctl_2.8.0-nightly.20230727_darwin_arm64.zip"
    sha256 "210e22a79a3c131bb37f6d44bd00be3b464daf543476507c57f6566352f2dc69"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
