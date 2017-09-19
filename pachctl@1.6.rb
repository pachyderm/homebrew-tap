require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0rc3/pachctl_1.6.0rc3_darwin_amd64.zip"
  sha256 "b7c1888d4af18dd8ab49d2d9275c9d0316df5a6b2ec091f61ebef04f3fdb916e"
  version "v1.6.0rc3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
