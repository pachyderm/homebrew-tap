require "formula"
require "language/go"
require 'erb'


class PachctlAT113 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.0/pachctl_1.13.0_darwin_amd64.zip"
  sha256 "ee60e307c3ce7ec84d4978d047f46b5bb9f13ae51c02f276cb541a3dad440607"
  version "v1.13.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
