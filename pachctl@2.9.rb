require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20240103"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240103/pachctl_2.9.0-nightly.20240103_darwin_amd64.zip"
    sha256 "9d747e48489180bcfd2d308667d10b1e6df7d9da4358b289a6d4f5e61697d896"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20240103/pachctl_2.9.0-nightly.20240103_darwin_arm64.zip"
    sha256 "6624dab7cf638503731160177d51c5076e6c9791fafdb9568ff82a87ba1e7791"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
