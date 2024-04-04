require "formula"
require "language/go"
require "erb"

class PachctlAT15 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v1.5.3"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.5.3/pachctl_1.5.3_darwin_amd64.zip"
    sha256 "0b97c9f4cd18c47810678ecaa2b358ba5febc551576846607874813600a61c2c"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.5.3/pachctl_1.5.3_linux_amd64.tar.gz"
    sha256 "82b386661ac2d9c56d6df84575c3cbfc781f4221f45a050e52a6510c84799b83"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
