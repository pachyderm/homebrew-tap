require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.0-rc.1"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-rc.1/pachctl_2.11.0-rc.1_darwin_arm64.zip"
      sha256 "a22405ae0a28bd2d9c5aeec8472250a1cfdd12511e7b877b9a8224cef0dc0d58"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-rc.1/pachctl_2.11.0-rc.1_darwin_amd64.zip"
      sha256 "0bc3df78436e553255d74d9d311b7421029876d2cb702498f1bc72c606438a72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-rc.1/pachctl_2.11.0-rc.1_linux_arm64.tar.gz"
      sha256 "12f5d4c21ead9803db7ccd0d54f523e09e91f443741deedbbbec08ffd63b49de"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-rc.1/pachctl_2.11.0-rc.1_linux_amd64.tar.gz"
      sha256 "6d682053d171bf0fe6a81ba560ba03637081268a9cba2e8917d67cccee8c6f52"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
