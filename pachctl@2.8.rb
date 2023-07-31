require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230731"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230731/pachctl_2.8.0-nightly.20230731_darwin_amd64.zip"
    sha256 "8e30955920d46b81b8eeaae7cff8045526543647cddc2d2802cabe0ebb68c5e2"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230731/pachctl_2.8.0-nightly.20230731_darwin_arm64.zip"
    sha256 "d49478fd708e2428cebbe7e8c6cc59932c0fbb6c2a80bfb7af1ae6ce5dbfc3c7"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
