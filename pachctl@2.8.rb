require "formula"
require "language/go"
require "erb"

class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.10"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.10/pachctl_2.8.10_darwin_arm64.zip"
      sha256 "400c989a6cf075b2a796c2b70748df28b236bb6ce5189e330b88503cd93bb172"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.10/pachctl_2.8.10_darwin_amd64.zip"
      sha256 "a59bbbd5ab7fe53d25c8bd11532a3445aac0e6b336da04d5069834cb1f644389"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.10/pachctl_2.8.10_linux_arm64.tar.gz"
      sha256 "5d8fc36a9901e8f54e8b04392301d21d2a368a49518694dab881375afaef796d"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.10/pachctl_2.8.10_linux_amd64.tar.gz"
      sha256 "6f05391fe2413276b4e0906ae620868dd4d296343906818779e687e84f5cdbbc"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end
