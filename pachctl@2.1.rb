require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.7/pachctl_2.1.7_darwin_amd64.zip"
  sha256 "e505c76d9aa627ec8b54b2f0f4e5097c9fcbe46507e99a71920abfcf55733a82"
  version "v2.1.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
