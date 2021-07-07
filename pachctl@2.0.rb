require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.30/pachctl_2.0.0-alpha.30_darwin_amd64.zip"
  sha256 "99012fc65ab7bd0f79bf4d17bc96f043b886c1ef5f53bcb6fcf000928698818d"
  version "v2.0.0-alpha.30"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
