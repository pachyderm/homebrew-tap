require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-rc.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-rc.2/pachctl_2.7.0-rc.2_darwin_amd64.zip"
    sha256 "5e5480d72fa39aff445719317c1f9e8666126070729c5d61d937eccb3f5d6502"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-rc.2/pachctl_2.7.0-rc.2_darwin_arm64.zip"
    sha256 "f431cc3863557c6d564087ca3e3e8423b9891aef1729b36782a31de53bc541c3"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
