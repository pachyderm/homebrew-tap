require "formula"
require "language/go"
require "erb"

class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.11"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.11/pachctl_2.6.11_darwin_arm64.zip"
      sha256 "f09e99f94be448a2e8150a7232d9a58d5f23559ae5c1ba3ce981f7b37d201a8b"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.11/pachctl_2.6.11_darwin_amd64.zip"
      sha256 "afd3039baba2d3188bafa88aa78da1c349d0e02fcffb28fa1d12db1197ed9989"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.11/pachctl_2.6.11_linux_arm64.tar.gz"
      sha256 "cff463b355369810f35f6703c639b369103f24548b20956b866f4e2854b4a8e7"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.11/pachctl_2.6.11_linux_amd64.tar.gz"
      sha256 "c83d659340f1545c1ccd29857291466779749a20c7152daf215386fea42acdc5"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
