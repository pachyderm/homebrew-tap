require "formula"
require "language/go"
require 'erb'


class PachctlAT24 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.4.0-alpha.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-alpha.3/pachctl_2.4.0-alpha.3_darwin_amd64.zip"
    sha256 "b5ac2e688b4388a775b19a78c3d3f7a2faa6624421650f4dabc6f530f5e888b3"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.4.0-alpha.3/pachctl_2.4.0-alpha.3_darwin_arm64.zip"
    sha256 "225bfdfd5a84cc1bf4dc8dee6c082d5a24c880de104175b07fc34be6613326c2"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end
