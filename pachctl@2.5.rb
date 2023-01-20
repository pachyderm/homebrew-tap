require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-alpha.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-alpha.4/pachctl_2.5.0-alpha.4_darwin_amd64.zip"
    sha256 "aa307c82c93ba30091beef9f95401a3ee56087810975c4af624f96b981e5f9b2"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-alpha.4/pachctl_2.5.0-alpha.4_darwin_arm64.zip"
    sha256 "a5271995f2a4b6cfa575e243feb081503195143583b15138b12e2cebb9887c6a"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
