require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-nightly.20231220"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231220/pachctl_2.9.0-nightly.20231220_darwin_amd64.zip"
    sha256 "102a89d50d77ac162300e7474747a8fe89230627650489ae72c6038969515aff"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-nightly.20231220/pachctl_2.9.0-nightly.20231220_darwin_arm64.zip"
    sha256 "15985822fecd1d4d7a53e778246f699e28b2aaa15b81568ecd8f40b09dc3be3f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
