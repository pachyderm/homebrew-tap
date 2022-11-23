require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221123"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221123/pachctl_2.5.0-nightly.20221123_darwin_amd64.zip"
    sha256 "3d224e9b8f8cc5acf0d99b7ceac961df1ce07f760f7f8f793d31b843c138eec8"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221123/pachctl_2.5.0-nightly.20221123_darwin_arm64.zip"
    sha256 "1b26eda2b0e050f76b44d085efdd83efe7fb71fbf65ee6ca4cc0b336dc5d43ef"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
