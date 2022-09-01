require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.0-alpha.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-alpha.1/pachctl_2.4.0-alpha.1_darwin_amd64.zip"
    sha256 "a6a91230aff2f788619c645c4678881a6d099e08704c9eda29993d15d72a37b5"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-alpha.1/pachctl_2.4.0-alpha.1_darwin_arm64.zip"
    sha256 "15d1c78a1b0c90d926715d2661751976d2d837c10a321725216e1c13cc569fa1"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
