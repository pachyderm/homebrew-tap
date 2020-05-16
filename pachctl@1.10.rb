require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.4/pachctl_1.10.4_darwin_amd64.zip"
  sha256 "3633c2e9f17944d25bc8708d8c4a3574cf12440153ea67da801ab1c7b9b26103"
  version "v1.10.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
