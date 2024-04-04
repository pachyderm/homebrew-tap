require "formula"
require "language/go"
require "erb"

class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.1.9"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.9/pachctl_2.1.9_darwin_amd64.zip"
    sha256 "632d6dfc84e5b63307aba58f24fcd3a5fede33849a71e8f26b424b874d64dd15"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.9/pachctl_2.1.9_linux_amd64.tar.gz"
    sha256 "8a7b6457f5c058920be05ad4145454949d7f2c97616d8f91c75646e57344cb21"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
