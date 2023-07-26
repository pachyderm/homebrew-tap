require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.7"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.7/pachctl_2.6.7_darwin_amd64.zip"
    sha256 "e1383c7a18264ee2c8d26d5ce99f2efb49e545d84c7150e40f8acd017b4a1ed8"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.7/pachctl_2.6.7_darwin_arm64.zip"
    sha256 "b45c66a4029861f74ad2c4dead08b472b882ce52c657378c7ebdad29c336393c"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
