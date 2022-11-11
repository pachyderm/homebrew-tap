require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221111"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221111/pachctl_2.5.0-nightly.20221111_darwin_amd64.zip"
    sha256 "9ca725a48782f6587683eca46acfe721b8e8992060fd61cbc9057b85addb4e34"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221111/pachctl_2.5.0-nightly.20221111_darwin_arm64.zip"
    sha256 "0be043db7454dcb9a34ec7a390a5b2c03bad227a52056f148ce01cb30baaf819"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
