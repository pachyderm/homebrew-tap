require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-rc.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-rc.3/pachctl_2.8.0-rc.3_darwin_amd64.zip"
    sha256 "e3a74bb45d8c2d7cd14b843302a6447273acb71d69a342643e1a0a7b97473fc6"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-rc.3/pachctl_2.8.0-rc.3_darwin_arm64.zip"
    sha256 "255a15e81e9db91f6708f5fb7fc1b58335018d1f2b6e51488877cacf2c2d4190"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
