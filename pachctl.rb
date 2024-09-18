require "formula"
require "language/go"
require "erb"

class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.3"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.3/pachctl_2.11.3_darwin_arm64.zip"
      sha256 "d29f986f887996d293487c1a0f22d8ba531ce2396fe9344860dbc6b4bd23de40"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.3/pachctl_2.11.3_darwin_amd64.zip"
      sha256 "2ff45ed1db3d4c2874e9e2115e79bfb5934f13327872c9e4c0b625f49e7ae294"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.3/pachctl_2.11.3_linux_arm64.tar.gz"
      sha256 "6ea853f0b73a4d7e9c9c86c6bf99e0802842e4cb47964d9431aa6a7541850121"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.3/pachctl_2.11.3_linux_amd64.tar.gz"
      sha256 "74b2d8f66e7f493a39d2eb9a979d03c8939b36c8c4b0175806726efcb9fac4bb"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
