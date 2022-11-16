require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-nightly.20221116"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221116/pachctl_2.5.0-nightly.20221116_darwin_amd64.zip"
    sha256 "ddc0819c47604777b06a13d286eddb7d749a38c91b63ca493c6abf71125be14a"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-nightly.20221116/pachctl_2.5.0-nightly.20221116_darwin_arm64.zip"
    sha256 "f30c59b43f321f4b6be6942b7bb787584791c439e61482113f5d9c8ac4088fa5"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
