require "formula"
require "language/go"
require 'erb'


class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.3/pachctl_1.12.3_darwin_amd64.zip"
  sha256 "d06de8d66a36cd3fd542cfcabb9160569918e9c1fcc582fbef978d2710f922db"
  version "v1.12.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
