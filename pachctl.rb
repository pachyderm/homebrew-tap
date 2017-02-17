require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.7/pachctl_1.3.7_darwin_amd64.zip"
  sha256 "d7d8e08360303e7b08211665af0309fd5109209b7092a55556de2725dafa399a"
  version "v1.3.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
