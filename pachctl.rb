require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.1/pachctl_1.2.1_darwin_amd64.zip"
  sha256 "539dfc5b4ffe0f4922902232afb3c266a4e8a70ee6994c7e7be1599862b9f3ed"
  version "v1.2.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
