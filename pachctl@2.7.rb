require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230721"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230721/pachctl_2.7.0-nightly.20230721_darwin_amd64.zip"
    sha256 "8d4075ed10fe1f0ee1ffda0ebc811afbee471b8d13e4f4815717c38d4deebec7"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230721/pachctl_2.7.0-nightly.20230721_darwin_arm64.zip"
    sha256 "1c1c69feee315f3d18b29330801af60ea2715088437e96cca3a74bdea0dc19be"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
