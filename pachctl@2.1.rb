require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.4/pachctl_2.1.4_darwin_amd64.zip"
  sha256 "b906db05a0bc877b5d639f6c674a232c5663c25cdbb1486daa97ab89e7591490"
  version "v2.1.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
