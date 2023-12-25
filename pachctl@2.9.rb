require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20231225"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231225/pachctl_2.9.0-nightly.20231225_darwin_amd64.zip"
    sha256 "93d52dc3cff768bbadc7bb26e5bd669b0e6fef7611c8ef36325740983e21f983"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231225/pachctl_2.9.0-nightly.20231225_darwin_arm64.zip"
    sha256 "81f2dec17af90fc0f94e188045c3be8ddde68e7597116999a2382837288f3259"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
