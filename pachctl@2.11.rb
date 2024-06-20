require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.0-alpha.4"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.4/pachctl_2.11.0-alpha.4_darwin_arm64.zip"
      sha256 "6aa8b25e347fb0b50743425c05b7f9fefdcbbcbbdc498751581963f9d02320a4"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.4/pachctl_2.11.0-alpha.4_darwin_amd64.zip"
      sha256 "fa2eca8f0fcbf436f54efcf87a12a571eaec168dd8fc170e286bf5e9418496dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.4/pachctl_2.11.0-alpha.4_linux_arm64.tar.gz"
      sha256 "8267b2f9c782475e587e67f7e7fb89f3dec09605137e28e6b38f81b20395867d"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.4/pachctl_2.11.0-alpha.4_linux_amd64.tar.gz"
      sha256 "e82cfed89ad03869495e0916f2fc93ed0a093709fffc6df06ed76e7282494d5d"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
