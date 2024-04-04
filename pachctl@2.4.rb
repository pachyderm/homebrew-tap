require "formula"
require "language/go"
require "erb"

class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.6"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.6/pachctl_2.4.6_darwin_arm64.zip"
      sha256 "1e0c98acc9ad7c8cc4f80c2344fe7bfee0b5dc532c8a861a349c25520143c378"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.6/pachctl_2.4.6_darwin_amd64.zip"
      sha256 "6e3459588c2d57a4aefcc166f9a8da31e177bdbb56aab3e2ec1fc5406c6b8080"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.6/pachctl_2.4.6_linux_arm64.tar.gz"
      sha256 "f59be1c6ea925b1d3a0c413c5853f7534ea946eeb7a45e7614854a964f36e061"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.6/pachctl_2.4.6_linux_amd64.tar.gz"
      sha256 "5441b0921bed9d054f214ce2c5308a337b702cf863e2f076ca34d6e29332d311"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
