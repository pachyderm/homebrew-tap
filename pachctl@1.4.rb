require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.4/pachctl_1.4.4_darwin_amd64.zip"
  sha256 "e2f72f70780feff8acff5e959ee2f486a73ad94d9aa21b276ca1c0e2130251c5"
  version "v1.4.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
