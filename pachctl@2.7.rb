require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-alpha.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-alpha.1/pachctl_2.7.0-alpha.1_darwin_amd64.zip"
    sha256 "b1d12dca9b5eeb1b54a367fea13c3e74a980192725e22bd68fb4ff0133b30483"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-alpha.1/pachctl_2.7.0-alpha.1_darwin_arm64.zip"
    sha256 "d98e133a93c0433794ecfec582d777375104f0c5471ad9765745939079cdf569"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
