require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-rc.2/pachctl_2.0.0-rc.2_darwin_amd64.zip"
  sha256 "216e80994661db932328924bda5bd841ac5a274756cad829eb7bc3b1565ca0e3"
  version "v2.0.0-rc.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
