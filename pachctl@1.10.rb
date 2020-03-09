require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0-325d5bb4a0398cce493b33e6fd3ad53c3a090216/pachctl_1.10.0-325d5bb4a0398cce493b33e6fd3ad53c3a090216_darwin_amd64.zip"
  sha256 "0d5c725d676b49045a6cbd8adb6854dc242e1da2d4748bf4e38df9ac9b9911eb"
  version "v1.10.0-325d5bb4a0398cce493b33e6fd3ad53c3a090216"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
