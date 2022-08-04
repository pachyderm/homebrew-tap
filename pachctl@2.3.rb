require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.0-rc.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-rc.1/pachctl_2.3.0-rc.1_darwin_amd64.zip"
    sha256 "42f5a97e92e4448a308e4c40680fdcd01de10e84507830a3762356e649d3e890"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-rc.1/pachctl_2.3.0-rc.1_darwin_arm64.zip"
    sha256 "2a43b76631cad200d818f1426a50e511907ab5f6b0d1dce36fc7a76f14f06994"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
