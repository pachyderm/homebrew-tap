require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230726"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230726/pachctl_2.7.0-nightly.20230726_darwin_amd64.zip"
    sha256 "fac99b263c6e44342b5fb23b765c0d149ec55e3bfff8f2a86916ffe8ab2e290d"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230726/pachctl_2.7.0-nightly.20230726_darwin_arm64.zip"
    sha256 "97b29b4cc0f229a99c52a6ab26d83e6f50293e4e33b21826a6a77fc0eab7c282"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
