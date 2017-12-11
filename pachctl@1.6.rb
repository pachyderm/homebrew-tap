require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.6/pachctl_1.6.6_darwin_amd64.zip"
  sha256 "b85cb19afa1ea7b491d39b79884ad4cf02d35d1ec06ad3d15a72185b3ba1b6fe"
  version "v1.6.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
