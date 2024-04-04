require "formula"
require "language/go"
require "erb"

class PachctlAT113 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v1.13.4"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.4/pachctl_1.13.4_darwin_amd64.zip"
    sha256 "7fc6e33739eb134dfdfdc89478ecdf4df84d9ccc1c420be8559c82622e17bff6"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.4/pachctl_1.13.4_linux_amd64.tar.gz"
    sha256 "a084c33a48d83f786213bb52abe925c81c3160c369f0141ef0b75fae98189e11"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
