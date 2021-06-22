require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.24/pachctl_2.0.0-alpha.24_darwin_amd64.zip"
  sha256 "713d03ba22a7dec874d0228cad1f4c54263b9055a79fdb65ed8c4edff040cccf"
  version "v2.0.0-alpha.24"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
