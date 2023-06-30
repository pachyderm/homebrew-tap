require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230630"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230630/pachctl_2.7.0-nightly.20230630_darwin_amd64.zip"
    sha256 "7dd7cfd25c4b7022bf12292fde8033edfc31e708f3525ed27d396b0d4a35bd3a"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230630/pachctl_2.7.0-nightly.20230630_darwin_arm64.zip"
    sha256 "2be6199aaae1dc25b5a86b9d5ca606cc0dc7971856a89c1556a3eb83153980c7"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
