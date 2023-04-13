require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230413"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230413/pachctl_2.6.0-nightly.20230413_darwin_amd64.zip"
    sha256 "5acb4366b44425ee3b6662dfccca2ccfc7e9d10dcfde5d328da8dca792869e37"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230413/pachctl_2.6.0-nightly.20230413_darwin_arm64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
