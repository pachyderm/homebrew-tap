require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.3/pachctl_1.6.3_darwin_amd64.zip"
  sha256 "c452743e25a070870a3c3635a61769918c32a15f6cb44871286b808d0ac57dc6"
  version "v1.6.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
