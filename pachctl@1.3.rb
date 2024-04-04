require "formula"
require "language/go"
require "erb"

class PachctlAT13 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v1.3.19"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.19/pachctl_1.3.19_darwin_amd64.zip"
    sha256 "2c20beacc0f94e0ce3aa101c4d026cc744a095de5bd4929cb8ec8ccb100f4b2d"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.19/pachctl_1.3.19_linux_amd64.tar.gz"
    sha256 "3a1fe7ecddb55e92151c4557dd3693e205e8209edf7d572276abbc36253ffb7b"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
