require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230516"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230516/pachctl_2.7.0-nightly.20230516_darwin_amd64.zip"
    sha256 "b45f06e5a7b43b7535e22b626bc2091fa6254df8ae234e6b4384db0b6b94eb39"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230516/pachctl_2.7.0-nightly.20230516_darwin_arm64.zip"
    sha256 "cff28012ee0449f0170073257a27e63e5358b24c38e49b345eff66d7745a9397"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
