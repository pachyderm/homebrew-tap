require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.5/pachctl_2.1.5_darwin_amd64.zip"
  sha256 "6549c6dd88b9eb1155c41602b12bc9f3544a00b0932878dfe7357efccaa36d4e"
  version "v2.1.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
