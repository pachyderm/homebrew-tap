require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.0-alpha.5"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.5/pachctl_2.11.0-alpha.5_darwin_arm64.zip"
      sha256 "b0f8c236a7f40da0a85e8fc6152d95d1cd50b2f447639181bb0af714bce7bdc2"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.5/pachctl_2.11.0-alpha.5_darwin_amd64.zip"
      sha256 "2d93aecdc0624ff61d32226d0bde3b81c5324a88a6798d3e63fa141862a51e1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.5/pachctl_2.11.0-alpha.5_linux_arm64.tar.gz"
      sha256 "835b93ce32b27f90bf597cb791b05fe6d793277017a1fe36df6a215263264a47"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.5/pachctl_2.11.0-alpha.5_linux_amd64.tar.gz"
      sha256 "05f2cd07ab88ef294e048c2fff554fc64c6694df7abaadc4eb78a3dc12afebb0"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
