require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-beta.1/pachctl_2.0.0-beta.1_darwin_amd64.zip"
  sha256 "44d4b2a65f625c3de8fa79c456841d718e6411268106a7261845907c404c1a20"
  version "v2.0.0-beta.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
