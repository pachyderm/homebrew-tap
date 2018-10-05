require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.10/pachctl_1.7.10_darwin_amd64.zip"
  sha256 "b2c7c6cb78d4c098d107fbd71df50c5f17cb7b38f0ba6adb8e2eff044e13abf4"
  version "v1.7.10"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
