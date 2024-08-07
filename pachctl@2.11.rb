require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.0"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0/pachctl_2.11.0_darwin_arm64.zip"
      sha256 "c519ae36c2a911dfd2905d74d3e2b21c1da833346d890206646499691f2f13d8"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0/pachctl_2.11.0_darwin_amd64.zip"
      sha256 "ba1ff49b49bbc3f1f2daec9dcb418a7601b9fecdcd18ffc1b993a1f8cd57559f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0/pachctl_2.11.0_linux_arm64.tar.gz"
      sha256 "55801c84177809ad7350a2998422da63d687b5eb26edd0c1d89019bf2decee07"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0/pachctl_2.11.0_linux_amd64.tar.gz"
      sha256 "91940a659aa0255fb7f6390931d531dc13d84a66576df19a7209f046a4729c9f"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
