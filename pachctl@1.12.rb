require "formula"
require "language/go"
require 'erb'


class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.1/pachctl_1.12.1_darwin_amd64.zip"
  sha256 "5847df0b1cace62f052d02a97dac094341566dbefca68fbb3263bdc9c46c01be"
  version "v1.12.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
