require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.3/pachctl_1.10.3_darwin_amd64.zip"
  sha256 "5b28f9833c51267e5df00330bfa85c1e07e4682d2b688ef400194c95cf3aaf68"
  version "v1.10.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
