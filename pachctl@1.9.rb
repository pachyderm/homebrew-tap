require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.11-eb1e7d322c9ebedaa0ea53e66af987b4cdb336ab/pachctl_1.9.11-eb1e7d322c9ebedaa0ea53e66af987b4cdb336ab_darwin_amd64.zip"
  sha256 "dc572da7bc9184d7bf29ac2fbcdf7e6f403a8b51ec18cab96a0f8fecfce1972e"
  version "v1.9.11-eb1e7d322c9ebedaa0ea53e66af987b4cdb336ab"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
