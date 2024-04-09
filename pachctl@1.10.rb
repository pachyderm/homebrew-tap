require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.5/pachctl_1.10.5_darwin_amd64.zip"
  sha256 "15c05786ae73c09bd141ae971933af0abc2aab366a47d62ae4b0a209ac0e6d2d"
  version "v1.10.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
