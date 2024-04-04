require "formula"
require "language/go"
require "erb"

class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v1.4.8"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.8/pachctl_1.4.8_darwin_amd64.zip"
    sha256 "0af641a28713bcea2b656fdeebabc284b3ccb10229a0e202ec9792a15404ff3c"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.8/pachctl_1.4.8_linux_amd64.tar.gz"
    sha256 "e51aecb9bc2437db8e9190282b756fa89e78c973426e85b179b8014c6a85e5bd"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
