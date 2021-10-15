require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-rc.4/pachctl_2.0.0-rc.4_darwin_amd64.zip"
  sha256 "fda1e4dd1117de4cb4553ca36dd6b39d3da16740f559cc05808b2af6fef5fc2e"
  version "v2.0.0-rc.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
