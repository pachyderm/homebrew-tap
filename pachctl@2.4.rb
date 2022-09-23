require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.0-nightly.20220923"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-nightly.20220923/pachctl_2.4.0-nightly.20220923_darwin_amd64.zip"
    sha256 "fe5a94dc750c4e3f74071222267c973d2e28386f94a8a781bb9a2801f76fa239"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-nightly.20220923/pachctl_2.4.0-nightly.20220923_darwin_arm64.zip"
    sha256 "e41d6f8b81eaf8f72b6690ec94def506c4303bc01c78f3d914c41a95beaf046d"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
