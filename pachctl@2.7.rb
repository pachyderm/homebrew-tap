require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230619"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230619/pachctl_2.7.0-nightly.20230619_darwin_amd64.zip"
    sha256 "56e2d974e9fd28524cb8054329485cb751ffa59979564bd329aa9ad07be9a7b1"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230619/pachctl_2.7.0-nightly.20230619_darwin_arm64.zip"
    sha256 "10dbbd0d4a8a87a81652ba73a6144fd5542cce48236212a40f18ed2821201ae3"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
