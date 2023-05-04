require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230504"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230504/pachctl_2.6.0-nightly.20230504_darwin_amd64.zip"
    sha256 "2e52b09869844daf319750b6c183f8e87176fc0c92fbd113b23d05dea35919f5"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230504/pachctl_2.6.0-nightly.20230504_darwin_arm64.zip"
    sha256 "4df41f866c46e113dcb4b135a5f4f224339d99e108ae74e77868178871392541"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
