require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0-c848b6b69c0dcae3c70793359148c74fa87da8c1/pachctl_1.6.0-c848b6b69c0dcae3c70793359148c74fa87da8c1_darwin_amd64.zip"
  sha256 "f61060e73e6be5a2a2ec2293fae5e937fdcb5d7c7364553d7ac23a64eeced335"
  version "v1.6.0-c848b6b69c0dcae3c70793359148c74fa87da8c1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
