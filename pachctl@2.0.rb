require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-beta.7/pachctl_2.0.0-beta.7_darwin_amd64.zip"
  sha256 "3d0cf57f9e5bf515d5983194c62728b5135ff5acdeeecf10e97ea2fd87817f28"
  version "v2.0.0-beta.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
