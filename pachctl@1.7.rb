require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.8/pachctl_1.7.8_darwin_amd64.zip"
  sha256 "b46283c9f441e94ecde175c9f49d7524361013181f29edec06830541b45be506"
  version "v1.7.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
