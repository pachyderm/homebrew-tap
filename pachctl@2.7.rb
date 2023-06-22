require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230622"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230622/pachctl_2.7.0-nightly.20230622_darwin_amd64.zip"
    sha256 "d287b2b0801c9d3bcd1481968820a3eecb4c915de2d683ebf7eba73d82d066a9"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230622/pachctl_2.7.0-nightly.20230622_darwin_arm64.zip"
    sha256 "a3e326ae37dd9de0129fc05723d186aab0a4f6d4422550b0873542756e58347f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
