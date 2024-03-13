require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.6"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.6/pachctl_2.8.6_darwin_amd64.zip"
    sha256 "291b6ffcccc1f1225275e56d3a39b8c1fb8b0cd67f9bbdf38735cc4e18b9bf61"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.6/pachctl_2.8.6_darwin_arm64.zip"
    sha256 "ce8ad4a178103913af7c02b11d95c4d28e5cc4b8094d46a3a0f81382a78d8e23"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
