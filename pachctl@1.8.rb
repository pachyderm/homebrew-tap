require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-eec3612e44cd1f994e355c1c1dee40c6d0a696a5/pachctl_1.8.2-eec3612e44cd1f994e355c1c1dee40c6d0a696a5_darwin_amd64.zip"
  sha256 "182b3f2693ff5d401a0e3025629e802af03113739669fdf2061de6c669007d9b"
  version "v1.8.2-eec3612e44cd1f994e355c1c1dee40c6d0a696a5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
