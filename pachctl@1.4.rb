require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.5/pachctl_1.4.5_darwin_amd64.zip"
  sha256 "29988e4a7f5a09678ecac327a0145c270a31ab8c039aa3896fb1b366cb08d14a"
  version "v1.4.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
