require "formula"
require "language/go"
require "erb"

class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.2.8"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.8/pachctl_2.2.8_darwin_amd64.zip"
    sha256 "c5c887a3cf41a5e12671604299abe48c89a98d6fde05e25dd441281af80de5df"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.8/pachctl_2.2.8_linux_amd64.tar.gz"
    sha256 "1152f9dee876d62abb770ff3bda5fe5ca4ac75cf60cd502e0c5ba7095d63ebd7"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
