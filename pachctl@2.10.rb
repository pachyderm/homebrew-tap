require "formula"
require "language/go"
require "erb"

class PachctlAT210 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.1"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.1/pachctl_2.10.1_darwin_arm64.zip"
      sha256 "9a678360eaaa0628f028ce0cd1281d71d77789a5186839c145421be261aad9f0"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.1/pachctl_2.10.1_darwin_amd64.zip"
      sha256 "03db2c4217c8bf692d7dec0868c78db5b525a24647e624e2c4633e86b772e78d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.1/pachctl_2.10.1_linux_arm64.tar.gz"
      sha256 "c9c13030a9fb76adf837144249d396913d0ca7598f09e8bfbeb6b11e0629a93f"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.1/pachctl_2.10.1_linux_amd64.tar.gz"
      sha256 "ffed18d721b161d9f8ee22c040c94bfc3d97553157d01d53af3bbc3d7f6322ab"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
