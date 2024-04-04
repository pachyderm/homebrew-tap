require "formula"
require "language/go"
require "erb"

class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v1.12.5"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.5/pachctl_1.12.5_darwin_amd64.zip"
    sha256 "2fbe59b5d2c32a3b1adb46819d173c768caef1ad1a46f745630dc4c79c425d7d"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.5/pachctl_1.12.5_linux_amd64.tar.gz"
    sha256 "6df43a09db6629e1940f30e10a9ddf120af6047817653093bbb8dd44706d4969"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
