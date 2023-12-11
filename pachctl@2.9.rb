require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20231211"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231211/pachctl_2.9.0-nightly.20231211_darwin_amd64.zip"
    sha256 "c50a70160cda19666c97168950b9ebd8a3a26083496e2760814f7f4260ee9597"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231211/pachctl_2.9.0-nightly.20231211_darwin_arm64.zip"
    sha256 "539a3fadd9b8fe0d2c29365d2ea5ae1908cbf148551cadb658a2f2fcce855512"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
