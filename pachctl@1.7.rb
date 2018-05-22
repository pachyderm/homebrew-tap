require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.2/pachctl_1.7.2_darwin_amd64.zip"
  sha256 "89b4612bcf1cc86f889c36f66ee25ac8732438a2f84bcb1b81beff7b065d22cd"
  version "v1.7.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
