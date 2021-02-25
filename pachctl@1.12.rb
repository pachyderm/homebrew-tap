require "formula"
require "language/go"
require 'erb'


class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.3-55d8a6c89ad0da9462876afd04848c5615f2c026/pachctl_1.12.3-55d8a6c89ad0da9462876afd04848c5615f2c026_darwin_amd64.zip"
  sha256 "89679912fe06b29e7978e0f67c81f5429cd5f2e21305b6a3d8ea5a44584627e0"
  version "v1.12.3-55d8a6c89ad0da9462876afd04848c5615f2c026"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
