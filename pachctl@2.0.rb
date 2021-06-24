require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.25/pachctl_2.0.0-alpha.25_darwin_amd64.zip"
  sha256 "8fee03fdad297f868e95a3c672ab75c00777c0e51a8e3e28e43028c25b598d55"
  version "v2.0.0-alpha.25"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
