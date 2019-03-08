require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.6/pachctl_1.8.6_darwin_amd64.zip"
  sha256 "2fcf09d443d4b530eda02b73380e871a29e7579cef4c3e61ea48fc235c8c4af7"
  version "v1.8.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
