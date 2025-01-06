require "formula"
require "language/go"
require "erb"

class PachctlAT212 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.12.0-rc.3"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-rc.3/pachctl_2.12.0-rc.3_darwin_arm64.zip"
      sha256 "79dbc59bbf68a6c42156651bb6f7518eaac038dde493546cd25f74b728850b25"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-rc.3/pachctl_2.12.0-rc.3_darwin_amd64.zip"
      sha256 "38d1087acbd630a32101c22c33fd02274c6b87a0ae8ea0692e8732aed1de2d63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-rc.3/pachctl_2.12.0-rc.3_linux_arm64.tar.gz"
      sha256 "24c89af462dca4f4f88b4f53a45b53d34ae5dc4c99dba70c715ec88b5d3232a8"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.12.0-rc.3/pachctl_2.12.0-rc.3_linux_amd64.tar.gz"
      sha256 "091ce1c66a8e6bdd30b3c7823070c5c5ef5a0e9ee880ceb304112a3bcc03dd8d"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
