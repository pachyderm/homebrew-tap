require "formula"
require "language/go"
require 'erb'


class PachctlAT13 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.17/pachctl_1.3.17_darwin_amd64.zip"
  sha256 "311711ca19920be886fff08981f8f98fd24be63e776d49b36e28fabfb4108645"
  version "v1.3.17"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
