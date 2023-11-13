require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20231113"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20231113/pachctl_2.8.0-nightly.20231113_darwin_amd64.zip"
    sha256 "3d7fc5dd12de9cdd8b6c7391e960b9aae33adc0d13c1febbe1203c8e5431437f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20231113/pachctl_2.8.0-nightly.20231113_darwin_arm64.zip"
    sha256 "9dc9002ed6bb6099a0c7f9b06270c07622838ec8ad8a1a4d25465ded5046fe91"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
