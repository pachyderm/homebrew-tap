require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.4/pachctl_2.0.4_darwin_amd64.zip"
  sha256 "f7ead5b6f0bd824a960b42fcea91aadb0d734c8aa1d1a0e58bb94f8b8fbb5146"
  version "v2.0.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
