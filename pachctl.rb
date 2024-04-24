require "formula"
require "language/go"
require "erb"

class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.4"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.8/pachctl_2.8.8_darwin_arm64.zip"
      sha256 "27841cca1c8c0dbf0e6ea84048de7a59a7063215f457bad3df6d06785344f0eb"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.8/pachctl_2.8.8_darwin_amd64.zip"
      sha256 "dd8cb436e967e0881fbefa40bd3d6fc9bce7c6e774430a5a144d5e62a466f5ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.8/pachctl_2.8.8_linux_arm64.tar.gz"
      sha256 "981a907ae53b0936da15ed4d93165ea69d651a44abe4c2761367ec74604b1ab5"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.8/pachctl_2.8.8_linux_amd64.tar.gz"
      sha256 "7b2fa51dcb6792733fc8d5e0e78ed48070f4d37c41a631cefe431d467e17485b"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
