require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20240105"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240105/pachctl_2.9.0-nightly.20240105_darwin_amd64.zip"
    sha256 "78b38239ca56a2259d43a62345ba880a60ae98373913ec6c4dc36b90e22ef4a1"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240105/pachctl_2.9.0-nightly.20240105_darwin_arm64.zip"
    sha256 "2c9e39216f24f33f85b3732fcb056caa681cdd97a3ff4074c245424b1c609ff6"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
