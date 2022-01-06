require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.5/pachctl_2.0.5_darwin_amd64.zip"
  sha256 "3b42a4e83a1783818e1bee0f5797fcc264db023d88279a71aada40ac60388893"
  version "v2.0.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
