require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-0dd2ae297eab6fb635d3278410566458707d728f/pachctl_1.8.2-0dd2ae297eab6fb635d3278410566458707d728f_darwin_amd64.zip"
  sha256 "64f3e18508088cdd9b8525aa50e25a2bf0a09a0a69dc2ecede1b47e50185a486"
  version "v1.8.2-0dd2ae297eab6fb635d3278410566458707d728f"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
