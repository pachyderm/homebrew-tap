require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.4"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.4/pachctl_2.4.4_darwin_amd64.zip"
    sha256 "b93a1aa4d12818cba6ccbf9691a19c5085043fdeac1aba9646e7b5328e0e1a9e"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.4/pachctl_2.4.4_darwin_arm64.zip"
    sha256 "17e105f8eaac3b625c725a86644f98bdebf3dd490915f8a94a9c3d8575ca090f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end