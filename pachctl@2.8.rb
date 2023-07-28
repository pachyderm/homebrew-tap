require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230728"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230728/pachctl_2.8.0-nightly.20230728_darwin_amd64.zip"
    sha256 "f28ab7ce8f1705d29e9aeb5fdc9e32742f1f157abac273801da686ab1f68424e"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230728/pachctl_2.8.0-nightly.20230728_darwin_arm64.zip"
    sha256 "887318820230b3b27a4b40a1178b968dcf12a3a77f293dd159ae7871bb4f2a22"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
