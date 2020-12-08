require "formula"
require "language/go"
require 'erb'


class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.0-rc1/pachctl_1.12.0-rc1_darwin_amd64.zip"
  sha256 "e1222a4c6c44069abf5aa689e35a701ae7bfcc88c6274827052c31daae2e1094"
  version "v1.12.0-rc1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
