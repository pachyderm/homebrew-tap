require "formula"
require "language/go"
require "erb"

class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v1.10.5"

  on_macos do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.5/pachctl_1.10.5_darwin_amd64.zip"
    sha256 "15c05786ae73c09bd141ae971933af0abc2aab366a47d62ae4b0a209ac0e6d2d"
  end

  on_linux do
    url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.5/pachctl_1.10.5_linux_amd64.tar.gz"
    sha256 "7195e6827643db5824cea63e956be8e4130992f37a116c82a329068def7522b0"
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
