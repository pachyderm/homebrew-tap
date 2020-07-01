require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.0-rc1/pachctl_1.11.0-rc1_darwin_amd64.zip"
  sha256 "2b665aafd697865db599114cb3f895164cca9b45f0db0a3b2d78dcea16715dc6"
  version "v1.11.0-rc1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
