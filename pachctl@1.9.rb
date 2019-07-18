require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.1/pachctl_1.9.1_darwin_amd64.zip"
  sha256 "d35482af055d545f3b0ebd7a4ff7e1369414853066e8dc01a15ea66b63b8a0c6"
  version "v1.9.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
