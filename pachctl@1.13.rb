require "formula"
require "language/go"
require 'erb'


class PachctlAT113 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.2/pachctl_1.13.2_darwin_amd64.zip"
  sha256 "5cdc201bd831d9fdad8f44ed824998604e49b35d99ac7c1a94456eb457a52087"
  version "v1.13.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
