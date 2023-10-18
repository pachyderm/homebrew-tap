require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.5"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.5/pachctl_2.7.5_darwin_amd64.zip"
    sha256 "1dc279b6ba4a124b3818ed849ebdda4749bc8fd8bc7a86001c21234687c7edb1"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.5/pachctl_2.7.5_darwin_arm64.zip"
    sha256 "98c2511a673f3346b6aa36bef15498f76aa78314dee2ffa28093e0b095a06bc8"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
