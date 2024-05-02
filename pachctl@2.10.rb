require "formula"
require "language/go"
require "erb"

class PachctlAT210 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.0-rc.2"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.2/pachctl_2.10.0-rc.2_darwin_arm64.zip"
      sha256 "e905fe3e50cac0df66ebcdc6cce805316299a88c5fd191bb0ea8e05a77751e00"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.2/pachctl_2.10.0-rc.2_darwin_amd64.zip"
      sha256 "e40dae9ef4fd5b81ca7e361b33ee28f5072e9392b9f6f1eada54306bc944659d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.2/pachctl_2.10.0-rc.2_linux_arm64.tar.gz"
      sha256 "6bcd76f305558bc3fd1001107e63d500adfe0068e5b54394f64a42a1eb56bbbe"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.2/pachctl_2.10.0-rc.2_linux_amd64.tar.gz"
      sha256 "5be8571eb0f548810bde5b8dd9b93ea65c337659c40ec41bec0174cf6f1e2eb5"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
