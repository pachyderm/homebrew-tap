require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230707"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230707/pachctl_2.7.0-nightly.20230707_darwin_amd64.zip"
    sha256 "e54ec853570d081333eebf24bfb02dbef45f7bd9b07e68ca7e1ef10ac8d80c4d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230707/pachctl_2.7.0-nightly.20230707_darwin_arm64.zip"
    sha256 "f2deae16440fc9fd2a74a4f9b127255ae97e947138da131c37405aa022a2b938"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
