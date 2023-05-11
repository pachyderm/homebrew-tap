require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230511"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230511/pachctl_2.6.0-nightly.20230511_darwin_amd64.zip"
    sha256 "9f8f2aa21468cc09a69e99aa9f4cb4f943551ee9009a9533dd82e26a0e2efd9c"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230511/pachctl_2.6.0-nightly.20230511_darwin_arm64.zip"
    sha256 "d01a64d8785b415e8af723c027e041de587ded408c0112e668be4fb4a7d7b6d6"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
