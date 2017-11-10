require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.4/pachctl_1.6.4_darwin_amd64.zip"
  sha256 "a8d40911462f8380ed5608910ae6f821713455fa6a313ead936bc021d3c9a4b8"
  version "v1.6.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
