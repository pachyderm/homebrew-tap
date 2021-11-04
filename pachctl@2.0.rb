require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.1/pachctl_2.0.1_darwin_amd64.zip"
  sha256 "0e65d50a8a58b81294c526cf3850796301df9b6963e6e5111980a2f5f1039ef0"
  version "v2.0.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end
