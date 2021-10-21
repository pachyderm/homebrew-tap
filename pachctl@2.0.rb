require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-rc.5/pachctl_2.0.0-rc.5_darwin_amd64.zip"
  sha256 "90b0443e4e64076075a306a9ad5bba5be21053ab02c4ac945a5b24f92003e8d5"
  version "v2.0.0-rc.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
