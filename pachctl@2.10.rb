require "formula"
require "language/go"
require "erb"

class PachctlAT210 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.0-rc.1"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.1/pachctl_2.10.0-rc.1_darwin_arm64.zip"
      sha256 "3d439e224f18e96fe4e12354b3e42a31c83aad95289cf361bc2d74a65d96b79b"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.1/pachctl_2.10.0-rc.1_darwin_amd64.zip"
      sha256 "29d990b6348bbb8e57871192297094f0a489df7bbe731b9252e5fa4e1543cd70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.1/pachctl_2.10.0-rc.1_linux_arm64.tar.gz"
      sha256 "6b2e9eb1ac5ff36f2ee90324cb433de2b8dfb13aa7bdc7dd4aa61b5ca690a66b"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.1/pachctl_2.10.0-rc.1_linux_amd64.tar.gz"
      sha256 "ace56361814e015b5fa3fd4c58cac4a81c357eddbc9947b1a9f2929ac8980ec9"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
