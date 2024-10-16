require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.5"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.5/pachctl_2.11.5_darwin_arm64.zip"
      sha256 "364af7ab4802b6960729521c173d5ddffc2f517a89798f8f038c395105811aff"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.5/pachctl_2.11.5_darwin_amd64.zip"
      sha256 "d2bca1cb03aefceea6fedc2c8d1a6cd40d6919ba1ca4f76524450ce85dea3d92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.5/pachctl_2.11.5_linux_arm64.tar.gz"
      sha256 "9f1454a083b98c2612e57fea84c2bf97296b7be56023ce1a327c675bebfb2388"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.5/pachctl_2.11.5_linux_amd64.tar.gz"
      sha256 "85bbc8b9e493a1820b894b3e48f59b3a349ea165d000f7966cf1a003ece03ebf"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
