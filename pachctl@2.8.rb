require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230809"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230809/pachctl_2.8.0-nightly.20230809_darwin_amd64.zip"
    sha256 "3711967d1f4815142665904544416e1d03c46b457fa8d168fda312cc6f45c484"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230809/pachctl_2.8.0-nightly.20230809_darwin_arm64.zip"
    sha256 "41f889034d8228d508d27999a137274bfa5edb0f18ddeef04b32d0b193e4768c"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
