require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.7/pachctl_1.4.7_darwin_amd64.zip"
  sha256 "f2e58dd70dc4a24229d5841cd40d5dcd35010e0e841b5491ed02313286edeaca"
  version "v1.4.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
