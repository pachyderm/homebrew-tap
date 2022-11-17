require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.0"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0/pachctl_2.4.0_darwin_amd64.zip"
    sha256 "1b55aca83cebf660385cfa88ba769c01be2b653480957086dcd8d9c07bb095db"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0/pachctl_2.4.0_darwin_arm64.zip"
    sha256 "18a3177e08971a6765d4ea325c210bf4b72277700fbe03525a5b14599f68ba23"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
