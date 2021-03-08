require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.7/pachctl_2.0.0-alpha.7_darwin_amd64.zip"
  sha256 "8808ae25d7f8b4c02e8614a1f936f8231005d6b1422dfe5a852f13af339df014"
  version "v2.0.0-alpha.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
