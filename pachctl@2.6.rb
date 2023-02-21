require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.2023022102"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.2023022102/pachctl_2.6.0-nightly.2023022102_darwin_amd64.zip"
    sha256 "b7c95c8691575492b50199bb24b821d95ce93d52202e191f87c6c6254604c633"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.2023022102/pachctl_2.6.0-nightly.2023022102_darwin_arm64.zip"
    sha256 "e3fac326f9f864c59b188273a61f55580138611558bde72f208c65c2ea5df618"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
