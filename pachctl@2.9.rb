require "formula"
require "language/go"
require "erb"

class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.5"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.5/pachctl_2.9.5_darwin_arm64.zip"
      sha256 "5527cfaf0982cbe6a3203d5dfb3ffb983ed0f80a62e685b6732f329ff8710e35"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.5/pachctl_2.9.5_darwin_amd64.zip"
      sha256 "9b3ae0725413dd86211b5942b734447fe648fc9049dadcbdbc632f65a0607555"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.5/pachctl_2.9.5_linux_arm64.tar.gz"
      sha256 "ead0dbe35fa22f1f8b5f106d410f5aa0ebb41e2e9083218427935aea0b309763"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.5/pachctl_2.9.5_linux_amd64.tar.gz"
      sha256 "db4eb5cfa632d95d369510ed144cd0fdf0f8e2bda560e5c0df93b2c6ce06ebf3"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
