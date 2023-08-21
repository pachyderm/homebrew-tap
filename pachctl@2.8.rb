require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230821"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230821/pachctl_2.8.0-nightly.20230821_darwin_amd64.zip"
    sha256 "3cfb27d6afb5ca7c0294149d652b055f1983cd999944a812403dde8669911236"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230821/pachctl_2.8.0-nightly.20230821_darwin_arm64.zip"
    sha256 "817462223beb5d2ee44c0b1d4b387594fac1acba5b6ef8f91a82b95305383514"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
