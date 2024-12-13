require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.6"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.6/pachctl_2.11.6_darwin_arm64.zip"
      sha256 "a51baf917d6bd6522d4c0d6cd75b6a04e98892164ae5c930ba5be46aff54b75b"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.6/pachctl_2.11.6_darwin_amd64.zip"
      sha256 "b2b39f374db68c697a319b8c8d0620ff315a38183de4d2d19f6d82e490271814"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.6/pachctl_2.11.6_linux_arm64.tar.gz"
      sha256 "1ba05ce0dd0d6cd7d9633fc0eec3d5074fe70efaf46b593480e6cb3464f4381c"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.6/pachctl_2.11.6_linux_amd64.tar.gz"
      sha256 "f3a7482174f1483a4a17b41011ccb7fb307477a795c7a8158213758dc712631b"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
