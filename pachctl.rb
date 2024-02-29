require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.5"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.5/pachctl_2.8.5_darwin_amd64.zip"
    sha256 "d62724356073e0106be55c7a21ee0dfd8ac6b4d29ec707bf471a068f1fb50cf4"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.5/pachctl_2.8.5_darwin_arm64.zip"
    sha256 "6b98bf08dbee2fdfc54c294ce24dc52660555ebf342088ec8fb590eb36f42610"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
