require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20231115"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20231115/pachctl_2.8.0-nightly.20231115_darwin_amd64.zip"
    sha256 "7da364458161c1206a76afab14ad83df0fa5c29123dbeec13bd0cd8ef97a0cc6"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20231115/pachctl_2.8.0-nightly.20231115_darwin_arm64.zip"
    sha256 "66556201f018a3a3acd282a85757196ba0ced47215dd861b825ae92cc8172b66"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
