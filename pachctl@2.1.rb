require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.0-rc.1/pachctl_2.1.0-rc.1_darwin_amd64.zip"
  sha256 "4a44e12b1461e75bf0defc4f674e84f97a1f5c8692108fa5193a3e73e68fd20d"
  version "v2.1.0-rc.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
