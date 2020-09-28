require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.4/pachctl_1.11.4_darwin_amd64.zip"
  sha256 "bc070d571c3504d938af389cda6a7f58ef206880a4d4464512129ac6be34ce3b"
  version "v1.11.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
