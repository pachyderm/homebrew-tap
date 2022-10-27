require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.0-rc.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-rc.1/pachctl_2.4.0-rc.1_darwin_amd64.zip"
    sha256 "3cb3b1c221900cddc342935586a4b878d36c32fad6d14b5e036a2972dfff4c07"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-rc.1/pachctl_2.4.0-rc.1_darwin_arm64.zip"
    sha256 "ac6035a41f19179b6b3f771b428609f9b66ea2eac3e0817edc95651f57a7fe6b"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
