require "formula"
require "language/go"
require "erb"

class PachctlAT00 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v0.0.0-test.2"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v0.0.0-test.2/pachctl_0.0.0-test.2_darwin_amd64.zip"
    sha256 "736e0b723ae007cda8f7685884a45824baeb77708ae7cc53fd9353f4a17786aa"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v0.0.0-test.2/pachctl_0.0.0-test.2_linux_amd64.tar.gz"
    sha256 "673f63dd47724222abfc6d070dc67fe06a973197f1e09504d9bdbec681526f4c"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
