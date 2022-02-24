require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.0-e92f87525017af2b8c1e453b318877fd5b480b8d/pachctl_2.1.0-e92f87525017af2b8c1e453b318877fd5b480b8d_darwin_amd64.zip"
  sha256 "e73b12316f3e855923b9e1428e056f54bc77f2b7d99fab5be632a365982219c6"
  version "v2.1.0-e92f87525017af2b8c1e453b318877fd5b480b8d"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
