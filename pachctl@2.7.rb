require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230710"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230710/pachctl_2.7.0-nightly.20230710_darwin_amd64.zip"
    sha256 "3c74f456a8302d0d020070d928026c54d2c57dc2d90deb4c2afd8a4c7550f531"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230710/pachctl_2.7.0-nightly.20230710_darwin_arm64.zip"
    sha256 "500f792fb3857284ab903de462f3aac463d3e68aac8c334dcf9656fcb05ed057"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
