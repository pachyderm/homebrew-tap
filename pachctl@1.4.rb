require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.0/pachctl_1.4.0_darwin_amd64.zip"
  sha256 "0e7ca8f6fe313cac9b38059d1945a3a12d802c577140b0bb27cb8f343974ffa0"
  version "v1.4.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
