require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230613"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230613/pachctl_2.7.0-nightly.20230613_darwin_amd64.zip"
    sha256 "ecc6cb292ff47351171da9e1d7f3dd7ea8c6230bae1b2e379cca9887ca2b7a36"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230613/pachctl_2.7.0-nightly.20230613_darwin_arm64.zip"
    sha256 "1bbbaf60211eb63d50e9f0cd669b750237cd9ff25ee70631865d2f076b04ca83"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
