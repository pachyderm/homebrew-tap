require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.3"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.3/pachctl_2.9.3_darwin_arm64.zip"
      sha256 "6d1834cc627d503c88532cabd9b05ca4b6a48065c83054ad4ad8d3c4289901f4"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.3/pachctl_2.9.3_darwin_amd64.zip"
      sha256 "c50837e45228cff53a09e95d37ff607b0132efd5bc252bbe359aa949df771114"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.3/pachctl_2.9.3_linux_arm64.tar.gz"
      sha256 "0c3eaa94c7e95f8920c461ae75976e60d725d7fd9fb9d3b1a0a0f11912deb7d4"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.3/pachctl_2.9.3_linux_amd64.tar.gz"
      sha256 "b8321a27d03ad4813b731d9be045a79ab22ec3018037ecdb21a26de01139f5f8"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
