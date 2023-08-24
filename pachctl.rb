require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.1/pachctl_2.7.1_darwin_amd64.zip"
    sha256 "0a6a104893956601f78813cd65100ea220d889092c9ed55584d284dab015baf5"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.1/pachctl_2.7.1_darwin_arm64.zip"
    sha256 "251b698952d2d1992137f0893f5fd7022856c28f72ad077921bbce3e646d3f5a"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
